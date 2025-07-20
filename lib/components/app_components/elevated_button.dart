
import 'package:flutter/material.dart';

import '../../util/const.dart';
import '../../util/themes.dart';
import 'custom_text.dart';

class ResponsiveElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final dynamic child;
  final Color? backgroundColor;
  final double? buttonHeight;
  final double? buttonWidth;
  final Widget? icon;
  final Color? borderColor;

  const ResponsiveElevatedButton({
    super.key,
    this.onPressed,
    required this.child,
    this.backgroundColor,
    this.buttonHeight,
    this.buttonWidth,
    this.icon,
    this.borderColor
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: buttonHeight ?? BoxDeco.boxHeight,
      width: buttonWidth ?? context.screenWidth*0.75,
      child: ElevatedButton.icon(
        icon: icon,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: backgroundColor ?? AppTheme.primaryGreenLight,
          foregroundColor: onPressed == null ? AppTheme.bpGrey : null,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(BoxDeco.boxSliderRadius),
              side: BorderSide(
                  color: borderColor ?? Colors.transparent
              )
          ),
        ),

        onPressed: onPressed,
        label: child is String
            ? CustomText(
          text: child,
          styleName: 'displayMedium',
          color: AppTheme.bpWhite,
          fontWeight: FontWeight.bold,
        )
            : child,
      ),
    );
  }
}
