import 'package:f_logistics/util/const.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double distanceKm;
  final double rating;
  final int reviewCount;
  final double price;
  final double deliveryFee;
  final bool isFavorite;
  final bool isPromo;
  final bool isVertical;

  const FoodCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.distanceKm,
    required this.rating,
    required this.reviewCount,
    required this.price,
    required this.deliveryFee,
    this.isVertical =true,
    this.isPromo = false,
    this.isFavorite = false,
  });

  @override
  Widget build(BuildContext context) {
    return isVertical?
    Container(
      width: context.screenWidth *0.45,
      padding:GloPad.edgeInsets5,
      margin: GloPad.edgeInsets10,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
        boxShadow: [BoxShadow(color: Colors.grey.shade200, blurRadius: 5)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo Image + Badge
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  height: context.screenHeight*0.2,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
             isPromo? Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: const Text(
                    'PROMO',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ):Container(),
            ],
          ),
         VerticalSpacing(4),

          // Title
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),

          const VerticalSpacing(2),

          // Distance & Rating
          Row(
            children: [
              Text('${distanceKm.toStringAsFixed(1)} km', style: const TextStyle(color: Colors.grey)),
              const SizedBox(width: 5),
              const Icon(Icons.star, color: Colors.orange, size: 14),
              Text(' $rating ', style: const TextStyle(fontWeight: FontWeight.w500)),
              Text('($reviewCount)', style: const TextStyle(color: Colors.grey)),
            ],
          ),

          const VerticalSpacing(0),


          // Price, Delivery, Favorite
          Row(
            children: [
              Text(
                '\$${price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const Spacer(),
              const Icon(Icons.delivery_dining, size: 16, color: Colors.green),
              Text(' \$${deliveryFee.toStringAsFixed(2)}', style: const TextStyle(color: Colors.grey)),
              const Spacer(),
              Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                size: 20,
                color: isFavorite ? Colors.red : Colors.grey,
              )
            ],
          ),
        ],
      ),
    ):
    Container(
      width: context.screenWidth *0.5,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              if (isPromo)
                Positioned(
                  top: 4,
                  left: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      'PROMO',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    )),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      '${(distanceKm * 1000).toInt()} m',
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    const SizedBox(width: 6),
                    const Icon(Icons.star, color: Colors.orange, size: 14),
                    Text(' $rating ', style: const TextStyle(fontWeight: FontWeight.w500)),
                    Text('($reviewCount)', style: const TextStyle(color: Colors.grey)),

                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(Icons.delivery_dining, color: Colors.green, size: 16),
                    const SizedBox(width: 4),
                    Text('\$${deliveryFee.toStringAsFixed(2)}',
                        style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(width: 6),
          Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,
            color: isFavorite ? Colors.red : Colors.grey,
            size: 20,
          )
        ],
      ),
    );
  }
}
