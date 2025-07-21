import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/header_row.dart';
import 'package:f_logistics/util/const.dart';
import 'package:flutter/material.dart';

import '../../../components/dashboard_components/food_card.dart';
import '../../../generated/assets.dart';
import '../../../util/text_const.dart';

class CategoriesDetailedPage extends StatefulWidget {
  final String headerTitle;
  const CategoriesDetailedPage({super.key,required this.headerTitle});

  @override
  State<CategoriesDetailedPage> createState() => _CategoriesDetailedPageState();
}

class _CategoriesDetailedPageState extends State<CategoriesDetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(padding: GloPad.edgeInsetsMainPages,
      child:Column(
        children: [
          HeaderRow(title: widget.headerTitle,),
          Expanded(child: _buildCategoriesOption()),
        ],
      )),),
    );

  }
  Widget _buildCategoriesOption(){
      return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount:5,
          itemBuilder: (context, index) {
            return FoodCard(
              isVertical: false,
              title: TextConst.homeBurger.tr(),
              distanceKm: 1.5,
              rating: 4.8,
              reviewCount: 1200,
              price: 15.00,
              deliveryFee: 4.00,
              isFavorite: false, imageUrl: Assets.homeBurger,);

          });
    }

}
