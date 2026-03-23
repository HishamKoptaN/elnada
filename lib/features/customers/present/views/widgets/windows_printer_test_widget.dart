import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../../domain/entities/customer_daily_reports_res_entity.dart';
import '../../services/windows_printer_service.dart';

class WindowsPrinterTestWidget extends StatefulWidget {
  const WindowsPrinterTestWidget({super.key});

  @override
  State<WindowsPrinterTestWidget> createState() =>
      _WindowsPrinterTestWidgetState();
}

class _WindowsPrinterTestWidgetState extends State<WindowsPrinterTestWidget> {
  List<String> _availablePorts = [];
  String? _selectedPort;
  bool _isTesting = false;
  bool _portTestResult = false;

  @override
  void initState() {
    super.initState();
    _loadAvailablePorts();
  }

  Future<void> _loadAvailablePorts() async {
    final ports = await WindowsPrinterService.getAvailablePorts();
    setState(() {
      _availablePorts = ports;
      if (ports.isNotEmpty && !ports.contains(_selectedPort)) {
        _selectedPort = ports.first;
      }
    });
  }

  Future<void> _testPort() async {
    if (_selectedPort == null) return;

    setState(() => _isTesting = true);

    try {
      final result = await WindowsPrinterService.testPort(_selectedPort!);
      setState(() {
        _portTestResult = result;
        _isTesting = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(result ? 'المنفذ يعمل بشكل صحيح' : 'المنفذ غير متاح'),
          backgroundColor: result ? Colors.green : Colors.red,
        ),
      );
    } catch (e) {
      setState(() => _isTesting = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطأ في اختبار المنفذ: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _printTest() async {
    if (_selectedPort == null) return;

    // إنشاء بيانات اختبار
    final customer = CustomerEntity(
      id: 1,
      name: 'أحمد محمد',
      phone: '01000000000',
    );

    final details = CustomerDailyReportDetailsResEntity(
      yesterdayClosedBalance: '100.50',
      closingBalance: '250.75',
      orders: [
        // DailyProductOrderEntity(
        //   productName: 'شاي',
        //   count: 2,
        //   price: 10.0,
        // ),
      ],
      transactions: [
        // DailyTransactionEntity(
        //   productName: 'قهوة',
        //   totalPrice: 15.0,
        // ),
      ],
      collections: [
        // DailyCollectionEntity(
        //   amount: '50.0',
        //   createdAt: '2024-01-01 10:00',
        // ),
      ],
    );

    try {
      await WindowsPrinterService.printToSerialPort(
        customer: customer,
        details: details,
        portName: _selectedPort!,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تم إرسال البيانات إلى الطابعة بنجاح'),
          backgroundColor: Colors.green,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('خطأ في الطباعة: $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('اختبار طابعة ويندوز'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'اختيار المنفذ التسلسلي:',
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.h),

            DropdownButtonFormField<String>(
              value: _selectedPort,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'اختر المنفذ',
              ),
              items: _availablePorts.map((port) {
                return DropdownMenuItem(value: port, child: Text(port));
              }).toList(),
              onChanged: (value) {
                setState(() => _selectedPort = value);
              },
            ),

            SizedBox(height: 16.h),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: _selectedPort == null ? null : _testPort,
                    child: _isTesting
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Text('اختبار المنفذ'),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: _selectedPort == null ? null : _printTest,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('طباعة اختبار'),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.h),

            if (_portTestResult)
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Icon(Icons.check_circle, color: Colors.green),
                    SizedBox(width: 8.w),
                    Text(
                      'المنفذ $_selectedPort جاهز للطباعة',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),

            SizedBox(height: 16.h),

            const Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ملاحظات:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('• تأكد من أن الطابعة متصلة بالمنفذ الصحيح'),
                    Text('• يجب تشغيل التطبيق على ويندوز فقط'),
                    Text('• قد تحتاج إلى إغلاق أي برنامج آخر يستخدم المنفذ'),
                    Text('• بعض الطابعات تتطلب منفذ COM معين'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
