import 'package:f_logistics/components/app_components/custom_text.dart';
import 'package:f_logistics/util/const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

class ShopTabCard extends StatelessWidget {
  final String shopName;
  final String logoAssetPath;
  final VoidCallback? onTap;

  const ShopTabCard({
    super.key,
    required this.shopName,
    required this.logoAssetPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: AppTheme.greyBorder,
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),

        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(logoAssetPath),
              radius: 14,
            ),
           HorizontalSpacing(2),
            CustomText(
              text:shopName,
            ),
          ],
        ),
      ),
    );
  }
}
