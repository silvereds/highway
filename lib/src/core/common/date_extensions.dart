import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String formatMdy([dynamic locale]) =>
      this != null ? DateFormat.yMMMd(locale).format(this) : '';

  String formatYmdHm([dynamic locale]) =>
      this != null ? DateFormat.yMd(locale).add_Hm().format(this) : '';

  String formatYmd([dynamic locale]) =>
      this != null ? DateFormat.yMd(locale).format(this) : '';
}

String getMonth(DateTime dateTime) {
  String month = '';
  switch (dateTime.month) {
    case 01:
      month = 'January';
      break;
    case 02:
      month = 'February';
      break;
    case 01:
      month = 'March';
      break;
    case 01:
      month = 'April';
      break;
    case 01:
      month = 'May';
      break;
    case 01:
      month = 'June';
      break;
    case 01:
      month = 'July';
      break;
    case 01:
      month = 'August';
      break;
    case 01:
      month = 'September';
      break;
    case 01:
      month = 'October';
      break;
    case 01:
      month = 'November';
      break;
    case 01:
      month = 'December';
      break;
  }

  return month;
}
