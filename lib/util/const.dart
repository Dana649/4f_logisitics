import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BoxDeco {
  static const double boxHeight = 45;
  static const double boxRadius = 12.0;
  static const double boxSliderRadius = 25.0;
  static const double textFieldRadius = 5.0;
  static const double textFieldHeight = 50;

}
extension MediaQueryValues on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}
class GloPad {
  static EdgeInsets edgeInsetsMainPages= const EdgeInsets.all(10);

  static EdgeInsets edgeInsets5= const EdgeInsets.all(5);
  static EdgeInsets edgeInsets7= const EdgeInsets.all(9);
  static EdgeInsets edgeInsets10= const EdgeInsets.all(10);
  static EdgeInsets edgeInsets20= const EdgeInsets.all(20);
  static EdgeInsets edgeInset30= const EdgeInsets.all(30);
  static EdgeInsets edgeInsets35= const EdgeInsets.all(35);
  static EdgeInsets edgeInsets0505 = const EdgeInsets.only(left: 5.0, right: 5.0);
  static EdgeInsets edgeInsets101020 = const EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0);
  static EdgeInsets edgeInsets202020 = const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0);
  static EdgeInsets edgeInsets101010 = const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0);
  static EdgeInsets edgeInsets1010 = const EdgeInsets.only(left: 10.0, right: 10.0);
  static EdgeInsets edgeInsets3030 = const EdgeInsets.only(left: 30.0, right: 30.0);

}

class InputFormater {
  static List<TextInputFormatter> onlyNumbers =  [FilteringTextInputFormatter.allow(RegExp(r'^[0-9]*$'))];
  static  List<TextInputFormatter> decimalNumbers = [ FilteringTextInputFormatter.allow( RegExp(r'^\d+\.?\d{0,10}$')),];
  static  List<TextInputFormatter> onlyLettersWithOneSpace = [ FilteringTextInputFormatter.allow(RegExp(r'[a-zA-ZÀ-ÖØ-öø-ÿ ]')),
    TextInputFormatter.withFunction((oldValue, newValue) {
      String value = newValue.text.replaceAll(RegExp(r'\s+'), ' ');
      return TextEditingValue(
        text: value,
        selection: TextSelection.collapsed(offset: value.length),
      );
    }),];

}
