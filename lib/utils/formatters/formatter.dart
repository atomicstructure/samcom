import 'package:intl/intl.dart';

class TFormatter {
  static final DateFormat _timeFormat = DateFormat('HH:mm:ss');
  static final DateFormat _dateTimeFormat = DateFormat('dd/MM/yyyy HH:mm:ss');

  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd/MM/yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: 'R\$').format(amount);
  }

  static String formatTime(DateTime date) {
    return _timeFormat.format(date);
  }

  static String formatDateTime(DateTime date) {
    return _dateTimeFormat.format(date);
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\0'), '');

    String countryCode = digitsOnly.substring(0, 2);
    digitsOnly = digitsOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLenght = 2;
      if (i == 0 && countryCode == '+1') {
        groupLenght = 3;
      }

      int end = i + groupLenght;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write('');
      }
      i = end;
    }
    return formattedNumber.toString();
  }
}
