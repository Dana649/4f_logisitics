import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';

class WhiteContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final Color backgroundColor;

  const WhiteContainer({
    super.key,
    required this.child,
    this.borderColor = AppTheme.greyBorder, 
    this.backgroundColor =  AppTheme.bpWhite,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColor, width: 1),
      ),
      child: child
    );
  }
}
