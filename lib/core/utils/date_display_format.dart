enum DateDisplayFormat {
  relative,    // Shows relative dates (أمس، اليوم، 10 مارس)
  arabicDate, // Shows full Arabic date (10 مارس 2024)
  simple,      // Shows simple format (10/03/2024)
  custom,      // Custom pattern with DateFormat
}

extension DateDisplayFormatExtension on DateDisplayFormat {
  String get arabicName {
    switch (this) {
      case DateDisplayFormat.relative:
        return 'نسبي';
      case DateDisplayFormat.arabicDate:
        return 'تاريخ عربي';
      case DateDisplayFormat.simple:
        return 'بسيط';
      case DateDisplayFormat.custom:
        return 'مخصص';
    }
  }

  String get description {
    switch (this) {
      case DateDisplayFormat.relative:
        return 'عرض التواريخ بشكل نسبي (أمس، اليوم، الخ)';
      case DateDisplayFormat.arabicDate:
        return 'عرض التاريخ بالصيغة العربية الكاملة';
      case DateDisplayFormat.simple:
        return 'عرض التاريخ بصيغة بسيطة (يوم/شهر/سنة)';
      case DateDisplayFormat.custom:
        return 'عرض التاريخ بصيغة مخصصة';
    }
  }
}
