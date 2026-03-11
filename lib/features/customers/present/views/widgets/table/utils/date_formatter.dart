class DateFormatter {
  static String formatDateSimple(String? dateString) {
    try {
      if (dateString == null) return 'غير محدد';
      final dateTime = DateTime.parse(dateString);
      final weekdays = ['أحد', 'إثنين', 'ثلاثاء', 'أربعاء', 'خميس', 'جمعة', 'سبت'];
      return '${weekdays[dateTime.weekday % 7]}\n${dateTime.day}/${dateTime.month}';
    } catch (e) {
      return dateString ?? 'غير محدد';
    }
  }
}
