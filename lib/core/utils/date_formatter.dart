// lib/core/utils/date_formatter.dart
import 'package:intl/intl.dart';
import 'date_display_format.dart';

String formatDate({
  required dynamic dateTime,
  String? newPattern,
  DateDisplayFormat displayFormat = DateDisplayFormat.relative,
}) {
  if (dateTime == null) return '';
  DateTime? parsedDateTime;

  if (dateTime is String) {
    try {
      if (dateTime.contains('-')) {
        if (dateTime.length <= 6) {
          final currentYear = DateTime.now().year.toString();
          final fullDate = '$currentYear-$dateTime';
          parsedDateTime = DateTime.parse(fullDate);
        } else {
          parsedDateTime = DateTime.parse(dateTime);
        }
      } else {
        parsedDateTime = DateTime.parse(dateTime);
      }
    } catch (_) {
      return dateTime;
    }
  } else if (dateTime is DateTime) {
    parsedDateTime = dateTime;
  } else {
    return dateTime.toString();
  }

  switch (displayFormat) {
    case DateDisplayFormat.relative:
      return _formatRelativeDate(parsedDateTime, newPattern);
    case DateDisplayFormat.arabicDate:
      return _formatArabicDate(parsedDateTime, newPattern);
    case DateDisplayFormat.simple:
      return _formatSimpleDate(parsedDateTime, newPattern);
    case DateDisplayFormat.custom:
      return _formatCustomDate(parsedDateTime, newPattern);
    default:
      return _formatRelativeDate(parsedDateTime, newPattern);
  }
}

String _formatRelativeDate(DateTime? dateTime, String? newPattern) {
  if (dateTime == null) return '';
  try {
    final now = DateTime.now();
    final difference = dateTime.difference(now).inDays.abs();

    if (difference <= 30) {
      return DateFormat(newPattern ?? 'd MMMM y', 'ar').format(dateTime);
    } else {
      return DateFormat(newPattern ?? 'd/M/y').format(dateTime);
    }
  } catch (_) {
    return dateTime.toString();
  }
}

String _formatArabicDate(DateTime? dateTime, String? newPattern) {
  if (dateTime == null) return '';
  try {
    return DateFormat(newPattern ?? 'd MMMM y', 'ar').format(dateTime);
  } catch (_) {
    return dateTime.toString();
  }
}

String _formatSimpleDate(DateTime? dateTime, String? newPattern) {
  if (dateTime == null) return '';
  try {
    return DateFormat(newPattern ?? 'd/M/y').format(dateTime);
  } catch (_) {
    return dateTime.toString();
  }
}

String _formatCustomDate(DateTime? dateTime, String? newPattern) {
  if (dateTime == null) return '';
  try {
    return DateFormat(newPattern ?? 'd/M/y').format(dateTime);
  } catch (_) {
    return dateTime.toString();
  }
}

//! 'dd/MM/yyyy hh:mm a'
//! 'dd/MM/yyyy hh:mm'
