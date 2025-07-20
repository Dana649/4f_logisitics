import 'package:easy_localization/easy_localization.dart';

String formatNumber(num number) {
  if (number == null) return '--';

  final isNegative = number < 0;
  String numberStr = number.abs().toString();

  List<String> parts = numberStr.split('.');

  final wholePart = NumberFormat('#,###', 'en_US').format(int.parse(parts[0]));

  final formattedNumber =
  parts.length > 1 ? '$wholePart.${parts[1]}' : wholePart;

  return isNegative ? '-$formattedNumber' : formattedNumber;
}