import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import '../views/widgets/data_grid/daily_customer_reports_data_source.dart';

class PrintService {
  static Future<void> printDataGrid({
    required DailyCustomerReportsDataSource source,
  }) async {
    final fontData = await rootBundle.load(
      'assets/fonts/Cairo-VariableFont_slnt,wght.ttf',
    );
    final ttf = pw.Font.ttf(fontData);
    final pdf = pw.Document();

    pdf.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        orientation: pw.PageOrientation.natural,
        textDirection: pw.TextDirection.rtl,
        theme: pw.ThemeData.withFont(base: ttf),
        build: (context) {
          return [
            pw.Center(
              child: pw.Text(
                'تقرير أبو جينة',
                style: pw.TextStyle(
                  font: ttf,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ),
            pw.SizedBox(height: 20),
            pw.Table.fromTextArray(
              headers: [
                'الاسم',
                'الباقي',
                'تسمين',
                'راجع ت',
                'امهات',
                'اماهت ت',
                'التحصيل',
                'الصافي',
              ].reversed.toList(),
              data: source.rows.map((row) {
                return row
                    .getCells()
                    .map((cell) => cell.value.toString())
                    .toList()
                    .reversed
                    .toList();
              }).toList(),
              cellStyle: pw.TextStyle(font: ttf, fontSize: 12),
              headerStyle: pw.TextStyle(
                font: ttf,
                fontWeight: pw.FontWeight.bold,
              ),
              cellAlignment: pw.Alignment.center,
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
}
