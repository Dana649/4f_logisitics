import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/profile_header.dart';
import 'package:f_logistics/pages/side_menu_pages/side_menu.dart';
import 'package:f_logistics/util/const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';

import '../../components/app_components/image_carousel.dart';
import '../../components/app_components/label_row_action.dart';
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

            ],
          ),
        ),
      ),
    );
  }
}

