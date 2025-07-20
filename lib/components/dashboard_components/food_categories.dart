import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

import '../app_components/custom_text.dart';

class FoodCategories extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subtitle;
  final double imageSize;


  const FoodCategories({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
    this.imageSize = 60,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
      Image.asset(imagePath, width: imageSize, height: imageSize, fit: BoxFit.contain),
        VerticalSpacing(1),
        CustomText(
          text:title,
          styleName: 'bodySmall',
          textAlign: TextAlign.center,
        ),
        if (subtitle != null) ...[
          VerticalSpacing(1),
          CustomText(
            text:subtitle!,
            styleName: 'bodySmall',
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
