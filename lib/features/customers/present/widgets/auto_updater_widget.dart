import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:auto_updater/auto_updater.dart';
import 'package:xml/xml.dart';
import '../../../../config/env_config.dart';

class AutoUpdaterWidget extends StatefulWidget {
  const AutoUpdaterWidget({super.key});

  @override
  State<AutoUpdaterWidget> createState() => _AutoUpdaterWidgetState();
}

class _AutoUpdaterWidgetState extends State<AutoUpdaterWidget> {
  final updater = ShorebirdUpdater();
  String _updateStatus = 'جاري التحقق من التحديثات...';
  String _updateUrl = '';

  @override
  void initState() {
    super.initState();
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
              'User-Agent': 'AbujenaApp-Updater',
              'Accept': 'application/xml',
            },
          )
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final document = XmlDocument.parse(response.body);
        final enclosure = document.findAllElements('enclosure').first;
        final latestVersion = enclosure.attributes
            .firstWhere(
              (attr) => attr.name.local == 'version',
              orElse: () => throw Exception('نسخة التحديث غير موجودة في الملف'),
            )
            .value;
        if (latestVersion.trim() != currentVersion.trim()) {
          setState(() {
            _updateStatus = '🔄 تحديث جديد متاح: $latestVersion';
            _updateUrl = enclosure.getAttribute('url') ?? '';
          });
          _showUpdateDialog();
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
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Text(_updateStatus, style: const TextStyle(fontSize: 12)),
    );
  }
}
