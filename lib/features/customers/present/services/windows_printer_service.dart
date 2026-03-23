import 'dart:io';
import 'package:flutter/foundation.dart';
import '../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';

class WindowsPrinterService {
  static Future<void> printToSerialPort({
    required CustomerEntity customer,
    required CustomerDailyReportDetailsResEntity details,
    String portName = 'COM7', // المنفذ الافتراضي
  }) async {
    try {
      if (!Platform.isWindows) {
        debugPrint('Serial port printing is only supported on Windows');
        return;
      }

      // إنشاء بيانات الطباعة بتنسيق ESC/POS
      final bytes = _generateEscPosBytes(customer, details);

      // إرسال البيانات إلى المنفذ التسلسلي
      await _sendToSerialPort(portName, bytes);

      debugPrint('Print data sent to $portName successfully');
    } catch (e) {
      debugPrint('Error printing to serial port: $e');
      rethrow;
    }
  }

  static List<int> _generateEscPosBytes(
    CustomerEntity customer,
    CustomerDailyReportDetailsResEntity details,
  ) {
    List<int> bytes = [];

    // ESC/POS commands
    bytes.addAll([0x1B, 0x40]); // Initialize printer
    bytes.addAll([0x1B, 0x61, 0x01]); // Center align

    // Header
    final header = 'ABU JENNA';
    bytes.addAll(_encodeText(header, isBold: true, isCentered: true));
    bytes.addAll([0x0A]); // New line

    // Customer info
    bytes.addAll([0x1B, 0x61, 0x00]); // Left align
    bytes.addAll(_encodeText('Name: ${customer.name ?? ''}'));
    bytes.addAll([0x0A]);
    bytes.addAll(_encodeText('Phone: ${customer.phone ?? ''}'));
    bytes.addAll([0x0A]);
    bytes.addAll(
      _encodeText('Date: ${DateTime.now().toString().substring(0, 19)}'),
    );
    bytes.addAll([0x0A, 0x0A]);

    // Separator
    bytes.addAll(_encodeText('----------------------------'));
    bytes.addAll([0x0A, 0x0A]);

    // Balance
    bytes.addAll(
      _encodeText('Balance: ${details.yesterdayClosedBalance ?? '0'}'),
    );
    bytes.addAll([0x0A, 0x0A]);

    // Orders
    if (details.orders != null && details.orders!.isNotEmpty) {
      bytes.addAll(_encodeText('ORDERS:', isBold: true));
      bytes.addAll([0x0A]);
      for (final order in details.orders!) {
        final orderText =
            '${order.totalCount ?? ''} x${order.totalCount ?? 0} = ${order.totalCount ?? 0}';
        bytes.addAll(_encodeText(orderText));
        bytes.addAll([0x0A]);
      }
      bytes.addAll([0x0A]);
    }

    // Transactions
    if (details.transactions != null && details.transactions!.isNotEmpty) {
      bytes.addAll(_encodeText('TRANSACTIONS:', isBold: true));
      bytes.addAll([0x0A]);
      for (final transaction in details.transactions!) {
        final transText =
            '${transaction.details ?? ''} = ${transaction.totalAmount ?? 0}';
        bytes.addAll(_encodeText(transText));
        bytes.addAll([0x0A]);
      }
      bytes.addAll([0x0A]);
    }

    // Collections
    if (details.collections != null && details.collections!.isNotEmpty) {
      bytes.addAll(_encodeText('COLLECTIONS:', isBold: true));
      bytes.addAll([0x0A]);
      for (final collection in details.collections!) {
        final collText =
            '${collection.amount ?? 0} - ${collection.createdAt ?? ''}';
        bytes.addAll(_encodeText(collText));
        bytes.addAll([0x0A]);
      }
      bytes.addAll([0x0A]);
    }

    // Final balance
    bytes.addAll(_encodeText('----------------------------'));
    bytes.addAll([0x0A]);
    bytes.addAll(
      _encodeText('FINAL: ${details.closingBalance ?? '0'}', isBold: true),
    );
    bytes.addAll([0x0A, 0x0A]);

    // Footer
    bytes.addAll([0x1B, 0x61, 0x01]); // Center align
    bytes.addAll(_encodeText('Thank you!'));
    bytes.addAll([0x0A, 0x0A, 0x0A, 0x0A, 0x0A]); // Multiple new lines

    // Paper cut (if supported)
    bytes.addAll([0x1D, 0x56, 0x00]); // Partial cut

    return bytes;
  }

  static List<int> _encodeText(
    String text, {
    bool isBold = false,
    bool isCentered = false,
  }) {
    List<int> bytes = [];

    if (isBold) {
      bytes.addAll([0x1B, 0x45, 0x01]); // Bold on
    }

    // Encode text to Windows-1256 for Arabic support
    bytes.addAll(text.codeUnits);

    if (isBold) {
      bytes.addAll([0x1B, 0x45, 0x00]); // Bold off
    }

    bytes.add(0x0A); // New line
    return bytes;
  }

  static Future<void> _sendToSerialPort(
    String portName,
    List<int> bytes,
  ) async {
    try {
      // استخدام Windows API مباشرة عبر PowerShell
      final script =
          '''
\$port = New-Object System.IO.Ports.SerialPort $portName,9600,None,8,one
\$port.Open()
\$bytes = [byte[]](${bytes.join(',')})
\$port.Write(\$bytes, 0, \$bytes.Length)
\$port.Close()
''';

      final result = await Process.run('powershell', ['-Command', script]);

      if (result.exitCode != 0) {
        throw Exception('Failed to send data to serial port: ${result.stderr}');
      }
    } catch (e) {
      debugPrint('Serial port error: $e');
      rethrow;
    }
  }

  static Future<List<String>> getAvailablePorts() async {
    try {
      if (!Platform.isWindows) return [];

      final script = '''
[System.IO.Ports.SerialPort]::getportnames()
''';

      final result = await Process.run('powershell', ['-Command', script]);

      if (result.exitCode == 0) {
        final output = result.stdout as String;
        return output
            .split('\n')
            .map((line) => line.trim())
            .where((line) => line.isNotEmpty)
            .toList();
      }
      return [];
    } catch (e) {
      debugPrint('Error getting serial ports: $e');
      return [];
    }
  }

  static Future<bool> testPort(String portName) async {
    try {
      final script =
          '''
try {
  \$port = New-Object System.IO.Ports.SerialPort $portName,9600,None,8,one
  \$port.Open()
  \$port.Close()
  Write-Output "OK"
} catch {
  Write-Output "ERROR"
}
''';

      final result = await Process.run('powershell', ['-Command', script]);
      return result.stdout.toString().trim() == 'OK';
    } catch (e) {
      return false;
    }
  }
}
