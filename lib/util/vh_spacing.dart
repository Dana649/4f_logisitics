import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final int factor;

  const VerticalSpacing(this.factor, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    double heightFactor;
    switch (factor) {
      case 0:
        heightFactor=0.005;
        break;
      case 1:
        heightFactor = 0.01;
        break;
      case 2:
        heightFactor = 0.02;
        break;
      case 3:
        heightFactor = 0.03;
        break;
      case 4:
        heightFactor = 0.04;
        break;
      case 5:
        heightFactor = 0.05;
        break;
      case 6:
        heightFactor = 0.06;
        break;
      case 8:
        heightFactor = 0.08;
        break;
      case 10:
        heightFactor = 0.1;
        break;
      case 20:
        heightFactor = 0.2;
        break;
      case 30:
        heightFactor = 0.3;
        break;
      case 40:
        heightFactor = 0.4;
        break;
      default:
        heightFactor = 0.02; // Default value
    }

    return SizedBox(height: screenHeight * heightFactor);
  }
}

class HorizontalSpacing extends StatelessWidget {
  final int factor;

  const HorizontalSpacing(this.factor, {super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double widthFactor;
    switch (factor) {
      case 1:
        widthFactor = 0.01;
        break;
      case 2:
        widthFactor = 0.02;
        break;
      case 3:
        widthFactor = 0.03;
        break;
      case 4:
        widthFactor = 0.04;
        break;
      case 5:
        widthFactor = 0.05;
        break;
      case 6:
        widthFactor = 0.06;
        break;
      case 8:
        widthFactor = 0.08;
        break;
      case 11:
        widthFactor = 0.1;
        break;
      case 12:
        widthFactor = 0.2;
        break;
      case 13:
        widthFactor = 0.3;
        break;
      case 14:
        widthFactor = 0.4;
        break;
      case 15:
        widthFactor = 0.5;
        break;
      case 115:
        widthFactor = 0.005;
        break;
      case 65:
        widthFactor = 0.065;
        break;
      default:
        widthFactor = 0.2; // Default value
    }

    return SizedBox(width: screenWidth * widthFactor);
  }
}