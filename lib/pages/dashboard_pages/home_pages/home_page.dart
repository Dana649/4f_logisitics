import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/custom_text.dart';
import 'package:f_logistics/components/app_components/profile_header.dart';
import 'package:f_logistics/components/dashboard_components/food_categories.dart';
import 'package:f_logistics/pages/side_menu_pages/side_menu.dart';
import 'package:f_logistics/router/go_route.dart';
import 'package:f_logistics/util/const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';

import '../../../components/app_components/image_carousel.dart';
import '../../../components/app_components/label_row_action.dart';
import '../../../components/dashboard_components/explore_new_card.dart';
import '../../../components/dashboard_components/food_card.dart';
import '../../../components/dashboard_components/shipments_widget.dart';
import '../../../generated/assets.dart';
import '../../../main_scaffold.dart';
import '../../../util/text_const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchCtrl=TextEditingController();
  final int itemCount = 5;
  final double itemHeight = 130.0;
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
                LabelActionRow(label: TextConst.homeSpecialOffers.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                ImageCarousel(imagePaths: [Assets.homeSpecialOffer1,Assets.homeSpecialOffer2],),
                VerticalSpacing(3),
                LabelActionRow(label: TextConst.homeCategories.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                VerticalSpacing(2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FoodCategories(imagePath: Assets.homeBurger, title: TextConst.homeBurger.tr(),onTap: (){
                      AppNavigator.navigatePushTo(context, AppRoute.categoriesDetailed.name, extra: 'Burgers');
                    },),
                    FoodCategories(imagePath: Assets.homePizza, title: TextConst.homePizza.tr(),onTap: (){
                      AppNavigator.navigatePushTo(context, AppRoute.categoriesDetailed.name, extra: 'Pizzas');

                    },),
                    FoodCategories(imagePath: Assets.homeMeat, title:TextConst.homeMeat.tr(), onTap: (){
                      AppNavigator.navigatePushTo(context, AppRoute.categoriesDetailed.name, extra: 'Meat');

                    },),
                    FoodCategories(imagePath: Assets.homeDeserts, title: TextConst.homeDeserts.tr(),onTap: (){
                      AppNavigator.navigatePushTo(context, AppRoute.categoriesDetailed.name, extra: 'Deserts');

                    },),

                  ],
                ),
                VerticalSpacing(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //Groceries
                    FoodCategories(imagePath: Assets.homeGroceries, title: TextConst.homeGroceries.tr(),onTap: (){
                      AppNavigator.navigatePushTo(context, AppRoute.categoriesDetailed.name, extra: 'Groceries');

                    },),
                    //Drinks
                    FoodCategories(imagePath: Assets.homeDrinks, title: TextConst.homeDrinks.tr(),onTap: (){},),
                    FoodCategories(imagePath: Assets.homeConstructuinTools, title: TextConst.homeConstruction.tr(),onTap:(){}),
                    FoodCategories(imagePath: Assets.homeTools, title: TextConst.homeTools.tr(),onTap:(){})


                  ],
                ),
                VerticalSpacing(4),
                LabelActionRow(label: TextConst.homeRecommendedForYou.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                SizedBox( height:context.screenHeight*0.4, width: double.infinity,child: _buildRecommended()),
                VerticalSpacing(4),
                // Explore New Items
                LabelActionRow(label: TextConst.homeExploreWhatsNew.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                SizedBox( height:context.screenHeight*0.2, width: double.infinity,child: _buildExploreNew()),
                VerticalSpacing(1),
                //Ads
                ImageCarousel(imagePaths: [Assets.homeAd1,Assets.homeAd2],),

                //Construction supplies
                LabelActionRow(label:TextConst.homeConstructionSupplies.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                SizedBox( height:context.screenHeight*0.12, width: double.infinity,child: _buildConstructionSupplies()),
               //Daily needs
                LabelActionRow(label: TextConst.homeDailyNeeds.tr(),actionText: TextConst.homeSeeAll.tr(),onPressed: (){},),
                SizedBox( height:context.screenHeight*0.14, width: double.infinity,child: _buildDailyNeeds()),
                //Global stores
                LabelActionRow(label: TextConst.homeExploreGlobalStores.tr(),actionText:TextConst.homeSeeAll.tr(),onPressed: (){},),
                _buildShopTabs(),

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
          title: TextConst.homeMixedSaladBowl.tr(),
          distanceKm: 1.5,
    rating: 4.8,
    reviewCount: 1200,
    price: 6.00,
    deliveryFee: 2.00,
    isFavorite: false, imageUrl: Assets.homeSaladBowl,);

    });
  }

  Widget _buildExploreNew() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      padding: const EdgeInsets.symmetric(horizontal: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsetsDirectional.only(end:5.0),
          child: SizedBox(
            width: context.screenWidth*0.6,
            child: WhatsNewCard(
              backgroundImageUrl: Assets.homeTruck,
              rating: 4.8,
              ratingCount: 1200,
              shopLogoUrl: Assets.homeShopLogo,
            ),
          ),
        );
      },
    );
  }


  Widget _buildConstructionSupplies() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      Assets.homeConstructionItems,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const VerticalSpacing(1),
                   CustomText(text:TextConst.homeConstructionItems.tr(),),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDailyNeeds() {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  ClipOval(
                    child: Image.asset(
                      Assets.homeGroceries,
                      width: 70,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const VerticalSpacing(1),
                  const Text('Grocery', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildShopTabs() {
    return SizedBox(
      height: context.screenHeight*0.05,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemCount: 3,
        itemBuilder: (context,index){
          return ShopTabCard(shopName: TextConst.homeFreshMart.tr(), logoAssetPath: Assets.homeFreshMart);

        },

      ),
    );
  }

}

