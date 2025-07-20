import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/profile_header.dart';
import 'package:f_logistics/components/dashboard_components/food_categories.dart';
import 'package:f_logistics/pages/side_menu_pages/side_menu.dart';
import 'package:f_logistics/util/const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

import '../../components/app_components/image_carousel.dart';
import '../../components/app_components/label_row_action.dart';
import '../../components/dashboard_components/explore_new_card.dart';
import '../../components/dashboard_components/food_card.dart';
import '../../generated/assets.dart';
import '../../main_scaffold.dart';
import '../../util/text_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchCtrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final scaffoldKey = ScaffoldKeyProvider.of(context)?.scaffoldKey;

    return Scaffold(
      drawer: SideMenu(),
      key: scaffoldKey,
      body: SafeArea(
        child: Padding(
          padding: GloPad.edgeInsetsMainPages,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ProfileHeader(scaffoldKey: scaffoldKey!, customerName: ''),
                //Search Field
                TextFormField(
                  controller: searchCtrl,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    hintText: TextConst.dashboardSearchTitle.tr(),
                    hintStyle: TextStyle(fontSize: 12 , color: Theme.of(context).bpTitles),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(BoxDeco.textFieldRadius), // Rounded corners
                      borderSide: BorderSide(color: AppTheme.bpSliderLight),
                    ),
                  ),
                ),
                LabelActionRow(label: 'Special Offers',actionText: 'See all',onPressed: (){},),
                ImageCarousel(imagePaths: [Assets.homeSpecialOffer1,Assets.homeSpecialOffer2],),
                VerticalSpacing(3),
                LabelActionRow(label: 'Categories',actionText: 'See all',onPressed: (){},),
                VerticalSpacing(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FoodCategories(imagePath: Assets.homeBurger, title: 'Burger'),
                    FoodCategories(imagePath: Assets.homePizza, title: 'Pizza'),
                    FoodCategories(imagePath: Assets.homeMeat, title: 'Meat'),
                    FoodCategories(imagePath: Assets.homeDeserts, title: 'Deserts'),
            
                  ],
                ),
                VerticalSpacing(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FoodCategories(imagePath: Assets.homeGroceries, title: 'Groceries'),
                    FoodCategories(imagePath: Assets.homeDrinks, title: 'Drinks'),
                    FoodCategories(imagePath: Assets.homeConstructuinTools, title: 'Construction'),
                    FoodCategories(imagePath: Assets.homeTools, title: 'Tools'),
            
            
                  ],
                ),
                VerticalSpacing(4),
                LabelActionRow(label: 'Recommended for you',actionText: 'See all',onPressed: (){},),
                SizedBox( height:context.screenHeight*0.4, width: double.infinity,child: _buildRecommended()),
                VerticalSpacing(4),
                // Explore New Items
                LabelActionRow(label: 'Explore what\'s new',actionText: 'See all',onPressed: (){},),
                SizedBox( height:context.screenHeight*0.4, width: double.infinity,child: _buildExploreNew()),

              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildRecommended(){
    return ListView.builder(
    scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(16),
    itemCount:5,
    itemBuilder: (context, index) {
          return FoodCard(
          title: 'Mixed Salad Bowl...',
          distanceKm: 1.5,
    rating: 4.8,
    reviewCount: 1200,
    price: 6.00,
    deliveryFee: 2.00,
    isFavorite: false, imageUrl: Assets.homeSaladBowl,);

    });
  }

  Widget _buildExploreNew(){
    return ListView.builder(
        padding: const EdgeInsets.all(16),
    itemCount:2,
    itemBuilder: (context, index) { return Column(
      children: [
        WhatsNewCard(backgroundImageUrl: Assets.homeTruck,rating: 4.8,ratingCount: 1200, shopLogoUrl: Assets.homeShopLogo,),
      VerticalSpacing(2),
      ],
    );});
  }
}

