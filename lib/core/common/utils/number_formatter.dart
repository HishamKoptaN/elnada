import 'package:intl/intl.dart';

/// Utility class for formatting numbers consistently across the app
class NumberFormatter {
  /// Formats a number with thousands separators and up to 2 decimal places
  /// Uses en_US locale to ensure standard comma separators and Latin digits
  /// 
  /// Examples:
  /// - 1000 -> "1,000"
  /// - 1234.5 -> "1,234.5"
  /// - 1234.56 -> "1,234.56"
  /// - 1234.567 -> "1,234.57"
  /// - null -> "0"
  /// - "" -> "0"
  /// - "invalid" -> "invalid"
  static String format(dynamic value) {
    if (value == null || value == "") return '0';
    
    num? parsedValue;

    if (value is num) {
      parsedValue = value;
    } else if (value is String) {
      parsedValue = num.tryParse(value);
    }

    if (parsedValue != null) {
      return NumberFormat('#,###.##', 'en_US').format(parsedValue);
    }
    return value.toString();
  }

  /// Formats a number as currency (adds currency symbol)
  /// [currencySymbol] defaults to "ج.م" (Egyptian Pound)
  static String formatCurrency(dynamic value, {String currencySymbol = "ج.م"}) {
    return '${format(value)} $currencySymbol';
  }

  /// Formats a number with thousands separators only (no decimal places)
  static String formatInteger(dynamic value) {
    if (value == null || value == "") return '0';
    
    num? parsedValue;

    if (value is num) {
      parsedValue = value;
    } else if (value is String) {
      parsedValue = num.tryParse(value);
    }

    if (parsedValue != null) {
      return NumberFormat('#,###', 'en_US').format(parsedValue);
    }
    return value.toString();
  }

  /// Formats a number with exactly 2 decimal places
  static String formatWithTwoDecimals(dynamic value) {
    if (value == null || value == "") return '0.00';
    
    num? parsedValue;

    if (value is num) {
      parsedValue = value;
    } else if (value is String) {
      parsedValue = num.tryParse(value);
    }

    if (parsedValue != null) {
      return NumberFormat('#,###.00', 'en_US').format(parsedValue);
    }
    return value.toString();
  }
}
