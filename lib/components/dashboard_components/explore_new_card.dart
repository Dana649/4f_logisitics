import 'package:f_logistics/util/themes.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

class WhatsNewCard extends StatelessWidget {
  final String backgroundImageUrl;
  final String shopLogoUrl;
  final double rating;
  final int ratingCount;

  const WhatsNewCard({
    super.key,
    required this.backgroundImageUrl,
    required this.shopLogoUrl,
    required this.rating,
    required this.ratingCount,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        children: [
          // Background Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              backgroundImageUrl,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),

          // Shop Logo in Top-Left
          Positioned(
            top: 10,
            right: 10,
            child: CircleAvatar(
              child: Image.asset(shopLogoUrl),
              radius: 20,
            ),
          ),

          // Rating Row at Bottom
          Positioned(
            bottom: 10,
            left: 10,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppTheme.greenLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Colors.yellow, size: 18),
                  HorizontalSpacing(1),
                  Text(
                    '$rating ($ratingCount)',
                    style: const TextStyle(color: AppTheme.bpBlack),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
