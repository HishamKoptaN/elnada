import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart' hide DeviceType;
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:auto_updater/auto_updater.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';
import '../../../../config/env_config.dart';
import '../../../../core/di/dependency_injection.dart';
import '../bloc/customers_bloc.dart';
import 'widgets/prices_widget.dart';
import 'widgets/data_grid/daily_customer_reports_data_source.dart';
import 'widgets/date_header_widget.dart';
import 'widgets/data_grid/customers_data_grid_widget.dart';
import 'package:package_info_plus/package_info_plus.dart';

class CustomersView extends StatefulWidget {
  const CustomersView({super.key});
  static const String routeName = 'customers';
  @override
  State<CustomersView> createState() => _CustomersViewState();
}

class _CustomersViewState extends State<CustomersView> {
  late DailyCustomerReportsDataSource _employeeDataSource;
  final updater = ShorebirdUpdater();
  String _updateStatus = 'جاري التحقق من التحديثات...';
  String _updateUrl = '';

  @override
  void initState() {
    super.initState();
    getIt<CustomersBloc>().add(
      CustomersEvent.getCustomers(date: DateTime.now()),
    );
    updater.readCurrentPatch().then((currentPatch) {});
    _checkForUpdates();
    _setupAutoUpdater();
  }

  Future<String> getVersion() async {
    return (await PackageInfo.fromPlatform()).version;
  }

  Future<void> _setupAutoUpdater() async {
    try {
      await autoUpdater.setFeedURL(
        'https://raw.githubusercontent.com/HishamKoptaN/elnada/refs/heads/${EnvConfig.config.envName}/desktop_appcast.xml',
      );
    } catch (e) {
      debugPrint('Error setting up auto updater: $e');
    }
  }

  Future<void> _checkForUpdates() async {
    try {
      final currentVersion = await getVersion();
      final url =
          'https://raw.githubusercontent.com/HishamKoptaN/elnada/refs/heads/dev/desktop_appcast.xml';

      final response = await http
          .get(
            Uri.parse(url),
            headers: {
              'User-Agent': 'AbujenaApp-Updater', // ضروري لتجنب حظر GitHub
              'Accept': 'application/xml',
            },
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final document = XmlDocument.parse(response.body);
        final enclosure = document.findAllElements('enclosure').first;

        // قراءة النسخة بطريقة مرنة تتجاهل الـ namespace
        final latestVersion = enclosure.attributes
            .firstWhere(
              (attr) => attr.name.local == 'version',
              orElse: () => throw Exception('نسخة التحديث غير موجودة في الملف'),
            )
            .value;

        debugPrint(
          '✅ النسخة الحالية: $currentVersion | نسخة السيرفر: $latestVersion',
        );

        if (latestVersion.trim() != currentVersion.trim()) {
          setState(() {
            _updateStatus = '🔄 تحديث جديد متاح: $latestVersion';
            _updateUrl = enclosure.getAttribute('url') ?? '';
          });
          _showUpdateDialog(); // إظهار الديالوج تلقائياً عند اكتشاف تحديث
        } else {
          setState(() {
            _updateStatus = '✅ التطبيق محدث';
          });
        }
      } else {
        throw Exception('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('🚨 Error: $e');
      setState(() {
        _updateStatus =
            '❌ فشل التحقق: ${e.toString().contains('403') ? 'صلاحيات السيرفر' : 'خطأ في الاتصال'}';
      });
    }
  }

  void _showUpdateDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('تحديث متاح'),
          content: Text(
            'يتوفر إصدار جديد: $_updateStatus\n\nهل تريد تحميل التحديث الآن؟',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('لاحقاً'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _startDownload();
              },
              child: const Text('تحديث'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _startDownload() async {
    try {
      setState(() {
        _updateStatus = '⬇️ جاري تحميل التحديث...';
      });
      await autoUpdater.checkForUpdates();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('جاري تحميل التحديث في الخلفية...'),
          duration: Duration(seconds: 2),
        ),
      );
    } catch (e) {
      setState(() {
        _updateStatus = '❌ فشل بدء التحديث';
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('فشل بدء التحديث'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CustomersBloc, CustomersState>(
        builder: (context, state) {
          final isDesktop = _isDesktop(context);
          final customers =
              state.mapOrNull(
                loaded: (s) => s.customersRes.customerDailyReports ?? [],
              ) ??
              [];
          final prices =
              state.mapOrNull(
                loaded: (s) => s.customersRes.productDailyPrices ?? [],
              ) ??
              [];
          _employeeDataSource = DailyCustomerReportsDataSource(
            customers: customers,
            isDesktop: isDesktop,
          ).copyWith(customers: customers, isDesktop: isDesktop);
          return Container(
            margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
            child: Column(
              spacing: 5.h,
              children: [
                FutureBuilder<String>(
                  future: getVersion(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(
                        snapshot.data!,
                        style: TextStyle(fontSize: 10.sp, color: Colors.black),
                      );
                    } else if (snapshot.hasError) {
                      return Text(
                        'Error loading version',
                        style: TextStyle(fontSize: 10.sp, color: Colors.red),
                      );
                    }
                    return Text(
                      'Loading...',
                      style: TextStyle(fontSize: 10.sp, color: Colors.grey),
                    );
                  },
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: _updateUrl.isNotEmpty
                        ? Colors.orange.shade100
                        : Colors.green.shade100,
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      color: _updateUrl.isNotEmpty
                          ? Colors.orange
                          : Colors.green,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        _updateUrl.isNotEmpty
                            ? Icons.system_update
                            : Icons.check_circle,
                        size: 16.sp,
                        color: _updateUrl.isNotEmpty
                            ? Colors.orange
                            : Colors.green,
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        _updateStatus,
                        style: TextStyle(fontSize: 9.sp, color: Colors.black87),
                      ),
                      if (_updateUrl.isNotEmpty) ...[
                        SizedBox(width: 8.w),
                        GestureDetector(
                          onTap: () {
                            _showUpdateDialog();
                          },
                          child: Icon(
                            Icons.download,
                            size: 14.sp,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                DateHeaderWidget(state: state),
                PricesWidget(
                  prices: prices,
                  selectedDate:
                      state.mapOrNull(loaded: (s) => s.selectedDate) ??
                      DateTime.now(),
                  canInsertPreviusDayData:
                      state.mapOrNull(
                        loaded: (s) => s.customersRes.canInsertPreviusDayData,
                      ) ??
                      false,
                ),
                CustomersDataGridWidget(
                  state: state,
                  employeeDataSource: _employeeDataSource,
                  canInsertPreviusDayData:
                      state.mapOrNull(
                        loaded: (s) => s.customersRes.canInsertPreviusDayData,
                      ) ??
                      false,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool _isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
}
