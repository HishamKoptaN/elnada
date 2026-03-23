import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/customer_daily_report_details_res_entity.dart';
import '../../domain/entities/customer_daily_reports_res_entity.dart';

class CustomerInvoicePrintService {
  static Future<void> printCustomerInvoice({
    required CustomerEntity customer,
    required CustomerDailyReportDetailsResEntity details,
  }) async {
    final fontData = await rootBundle.load(
      'assets/fonts/Cairo-VariableFont_slnt,wght.ttf',
    );
    final ttf = pw.Font.ttf(fontData);
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.portrait,
        textDirection: pw.TextDirection.rtl,
        theme: pw.ThemeData.withFont(base: ttf),
        header: (pw.Context context) {
          return pw.Container(
            padding: const pw.EdgeInsets.all(16),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(
                  'فاتورة العميل',
                  style: pw.TextStyle(
                    font: ttf,
                    fontSize: 20,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 8),
                pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'الاسم: ${customer.name ?? ''}',
                            style: pw.TextStyle(font: ttf, fontSize: 14),
                          ),
                          pw.SizedBox(height: 4),
                          pw.Text(
                            'الهاتف: ${customer.phone ?? ''}',
                            style: pw.TextStyle(font: ttf, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    pw.Text(
                      DateFormat('yyyy/MM/dd').format(DateTime.now()),
                      style: pw.TextStyle(font: ttf, fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
        build: (context) {
          return [
            pw.Container(
              padding: const pw.EdgeInsets.all(16),
              child: pw.Column(
                children: [
                  _buildSection(
                    'الباقي',
                    details.yesterdayClosedBalance ?? '0',
                    ttf,
                  ),
                  pw.SizedBox(height: 16),

                  if (details.orders != null && details.orders!.isNotEmpty) ...[
                    _buildOrdersSection(details.orders!, ttf),
                    pw.SizedBox(height: 16),
                  ],

                  if (details.transactions != null &&
                      details.transactions!.isNotEmpty) ...[
                    _buildTransactionsSection(details.transactions!, ttf),
                    pw.SizedBox(height: 16),
                  ],

                  if (details.collections != null &&
                      details.collections!.isNotEmpty) ...[
                    _buildCollectionsSection(details.collections!, ttf),
                    pw.SizedBox(height: 16),
                  ],

                  _buildSection('النهائي', details.closingBalance ?? '0', ttf),
                ],
              ),
            ),
          ];
        },
      ),
    );

    await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save(),
      usePrinterSettings: true,
      format: PdfPageFormat.a4,
    );
  }

  static pw.Widget _buildSection(String title, String value, pw.Font font) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(8),
      decoration: pw.BoxDecoration(
        border: pw.Border.all(color: PdfColors.grey300),
        borderRadius: const pw.BorderRadius.all(pw.Radius.circular(4)),
      ),
      child: pw.Row(
        mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
        children: [
          pw.Text(
            title,
            style: pw.TextStyle(
              font: font,
              fontSize: 14,
              fontWeight: pw.FontWeight.bold,
            ),
          ),
          pw.Text(value, style: pw.TextStyle(font: font, fontSize: 14)),
        ],
      ),
    );
  }

  static pw.Widget _buildOrdersSection(List orders, pw.Font font) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'الطلبات',
          style: pw.TextStyle(
            font: font,
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        pw.Table(
          border: pw.TableBorder.all(color: PdfColors.grey300),
          columnWidths: {
            0: const pw.FixedColumnWidth(100),
            1: const pw.FixedColumnWidth(80),
            2: const pw.FixedColumnWidth(80),
          },
          children: [
            pw.TableRow(
              children: [
                _buildTableCell('المنتج', font, isHeader: true),
                _buildTableCell('الكمية', font, isHeader: true),
                _buildTableCell('السعر', font, isHeader: true),
              ],
            ),
            ...orders.map(
              (order) => pw.TableRow(
                children: [
                  _buildTableCell(order.product?.name ?? '', font),
                  _buildTableCell(order.count?.toString() ?? '', font),
                  _buildTableCell(order.price?.toString() ?? '', font),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  static pw.Widget _buildTransactionsSection(List transactions, pw.Font font) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'البيع',
          style: pw.TextStyle(
            font: font,
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        ...transactions.map(
          (transaction) => pw.Container(
            margin: const pw.EdgeInsets.only(bottom: 4),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  transaction.product?.name ?? '',
                  style: pw.TextStyle(font: font, fontSize: 12),
                ),
                pw.Text(
                  transaction.totalPrice?.toString() ?? '',
                  style: pw.TextStyle(font: font, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static pw.Widget _buildCollectionsSection(List collections, pw.Font font) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          'التحصيل',
          style: pw.TextStyle(
            font: font,
            fontSize: 16,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 8),
        ...collections.map(
          (collection) => pw.Container(
            margin: const pw.EdgeInsets.only(bottom: 4),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              children: [
                pw.Text(
                  collection.amount?.toString() ?? '',
                  style: pw.TextStyle(font: font, fontSize: 12),
                ),
                pw.Text(
                  collection.createdAt ?? '',
                  style: pw.TextStyle(font: font, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static pw.Widget _buildTableCell(
    String text,
    pw.Font font, {
    bool isHeader = false,
  }) {
    return pw.Container(
      padding: const pw.EdgeInsets.all(8),
      child: pw.Text(
        text,
        style: pw.TextStyle(
          font: font,
          fontSize: 12,
          fontWeight: isHeader ? pw.FontWeight.bold : pw.FontWeight.normal,
        ),
      ),
    );
  }
}
