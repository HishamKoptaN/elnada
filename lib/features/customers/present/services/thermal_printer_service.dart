import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';

class ThermalPrinterService {
  static Future<void> printThermalInvoice({
    required CustomerEntity customer,
    required CustomerDailyReportDetailsResEntity details,
  }) async {
    final fontData = await rootBundle.load(
      'assets/fonts/Cairo-VariableFont_slnt,wght.ttf',
    );
    final ttf = pw.Font.ttf(fontData);
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.roll80,
        orientation: pw.PageOrientation.portrait,
        textDirection: pw.TextDirection.rtl,
        theme: pw.ThemeData.withFont(base: ttf),
        margin: const pw.EdgeInsets.all(8),
        build: (context) {
          return pw.Container(
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.center,
              children: [
                // Header
                pw.Text(
                  'فاتورة العميل',
                  style: pw.TextStyle(
                    font: ttf,
                    fontSize: 16,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 8),
                pw.Divider(thickness: 1),

                // Customer Info
                pw.Container(
                  width: double.infinity,
                  child: pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(
                        'الاسم: ${customer.name ?? ''}',
                        style: pw.TextStyle(font: ttf, fontSize: 10),
                      ),
                      pw.Text(
                        'الهاتف: ${customer.phone ?? ''}',
                        style: pw.TextStyle(font: ttf, fontSize: 10),
                      ),
                      pw.Text(
                        DateFormat('yyyy/MM/dd HH:mm').format(DateTime.now()),
                        style: pw.TextStyle(font: ttf, fontSize: 8),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 8),
                pw.Divider(thickness: 1),

                // Balance
                pw.Container(
                  width: double.infinity,
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'الباقي:',
                        style: pw.TextStyle(
                          font: ttf,
                          fontSize: 10,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        details.yesterdayClosedBalance ?? '0',
                        style: pw.TextStyle(font: ttf, fontSize: 10),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 8),

                // Orders Section
                if (details.orders != null && details.orders!.isNotEmpty) ...[
                  pw.Text(
                    'الطلبات:',
                    style: pw.TextStyle(
                      font: ttf,
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 4),
                  ...details.orders!.map(
                    (order) => pw.Container(
                      width: double.infinity,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          // pw.Expanded(
                          //   flex: 2,
                          //   child: pw.Text(
                          //     order.productName ?? '',
                          //     style: pw.TextStyle(font: ttf, fontSize: 8),
                          //   ),
                          // ),
                          // pw.Text(
                          //   'x${order.count ?? 0}',
                          //   style: pw.TextStyle(font: ttf, fontSize: 8),
                          // ),
                          // pw.Text(
                          //   order.price?.toString() ?? '0',
                          //   style: pw.TextStyle(font: ttf, fontSize: 8),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 8),
                ],

                // Transactions Section
                if (details.transactions != null &&
                    details.transactions!.isNotEmpty) ...[
                  pw.Text(
                    'البيع:',
                    style: pw.TextStyle(
                      font: ttf,
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 4),
                  ...details.transactions!.map(
                    (transaction) => pw.Container(
                      width: double.infinity,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          // pw.Expanded(
                          //   child: pw.Text(
                          //     transaction.product?.name ?? '',
                          //     style: pw.TextStyle(font: ttf, fontSize: 8),
                          //   ),
                          // ),
                          // pw.Text(
                          //   transaction.totalPrice?.toString() ?? '0',
                          //   style: pw.TextStyle(font: ttf, fontSize: 8),
                          // ),
                        ],
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 8),
                ],

                // Collections Section
                if (details.collections != null &&
                    details.collections!.isNotEmpty) ...[
                  pw.Text(
                    'التحصيل:',
                    style: pw.TextStyle(
                      font: ttf,
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.SizedBox(height: 4),
                  ...details.collections!.map(
                    (collection) => pw.Container(
                      width: double.infinity,
                      child: pw.Row(
                        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                        children: [
                          pw.Text(
                            collection.amount?.toString() ?? '0',
                            style: pw.TextStyle(font: ttf, fontSize: 8),
                          ),
                          pw.Text(
                            collection.createdAt ?? '',
                            style: pw.TextStyle(font: ttf, fontSize: 8),
                          ),
                        ],
                      ),
                    ),
                  ),
                  pw.SizedBox(height: 8),
                ],

                // Final Balance
                pw.Divider(thickness: 1),
                pw.Container(
                  width: double.infinity,
                  child: pw.Row(
                    mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [
                      pw.Text(
                        'النهائي:',
                        style: pw.TextStyle(
                          font: ttf,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                      pw.Text(
                        details.closingBalance ?? '0',
                        style: pw.TextStyle(
                          font: ttf,
                          fontSize: 12,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                pw.SizedBox(height: 16),

                // Footer
                pw.Text(
                  'شكراً لكم',
                  style: pw.TextStyle(
                    font: ttf,
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 8),
                pw.Divider(thickness: 1),
              ],
            ),
          );
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
      usePrinterSettings: true,
      format: PdfPageFormat.roll80,
    );
  }

  static Future<void> printDirectToBluetoothPrinter({
    required CustomerEntity customer,
    required CustomerDailyReportDetailsResEntity details,
  }) async {
    try {
      // Show printer selection dialog
      // This would require bluetooth_print package to be properly configured
      // For now, we'll use the thermal PDF format as fallback
      await printThermalInvoice(customer: customer, details: details);
    } catch (e) {
      debugPrint('Error printing to Bluetooth printer: $e');
      // Fallback to thermal PDF
      await printThermalInvoice(customer: customer, details: details);
    }
  }
}
