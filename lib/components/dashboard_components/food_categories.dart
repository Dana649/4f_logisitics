import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

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
        VerticalSpacing(5),
        Text(
          title,
          style: titleStyle ?? Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        if (subtitle != null) ...[
          SizedBox(height: spacing / 2),
          Text(
            subtitle!,
            style: subtitleStyle ?? Theme.of(context).textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}
