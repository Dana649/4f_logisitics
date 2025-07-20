import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final String text;
  final String styleName;
  final Color? color;
  final double? ratio;
  final int? maxLines;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextDirection? textDirection;
  final double? fontSize;
  final TextOverflow? textOverflow;


  const CustomText(
      {super.key,
        required this.text,
        this.styleName = 'labelMedium',
        this.color,
        this.ratio,
        this.maxLines,
        this.textAlign,
        this.fontWeight,
        this.textDirection,
        this.fontSize,
        this.textOverflow,

      }
      );

  TextStyle? getStyle(BuildContext context, String styleName) {
    var textTheme = Theme.of(context).textTheme;
    switch (styleName) {
      case 'headlineSmall':
        return textTheme.headlineSmall;
      case 'headlineLarge':
        return textTheme.headlineLarge;
      case 'displayLarge':
        return textTheme.displayLarge;
      case 'displayMedium':
        return textTheme.displayMedium;
      case 'displaySmall':
        return textTheme.displaySmall;
      case 'titleLarge':
        return textTheme.titleLarge;
      case 'titleMedium':
        return textTheme.titleMedium;
      case 'titleSmall':
        return textTheme.titleSmall;
      case 'bodyLarge':
        return textTheme.bodyLarge;
      case 'bodyMedium':
        return textTheme.bodyMedium;
      case 'bodySmall':
        return textTheme.bodySmall;
      case 'labelLarge':
        return textTheme.labelLarge;
      case 'labelMedium':
        return textTheme.labelMedium;
      case 'labelSmall':
        return textTheme.labelSmall;
      default:
        return textTheme.labelSmall;  // Default style if not specified
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      textDirection: textDirection ?? Directionality.of(context),
      style: getStyle(context, styleName)?.copyWith(
        color: color ?? Theme.of(context).bpDarkText,
        fontWeight: fontWeight?? FontWeight.w400,
        fontSize: fontSize,
        overflow: textOverflow,
        // height:Localizations.localeOf(context).languageCode == 'ar' ? ratio ?? 2 : null ,
        height: 1.5
      ),
    );
  }
}
