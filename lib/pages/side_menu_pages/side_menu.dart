import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import '../../components/app_components/custom_text.dart';
import '../../components/side_menu_components/tabs.dart';
import '../../router/go_route.dart';
import '../../util/const.dart';
import '../../util/text_const.dart';
import '../../util/vh_spacing.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      child: Drawer(
        backgroundColor: Theme.of(context).bpDrawer,
        child: SafeArea(
          child: Padding(
            padding: GloPad.edgeInsets202020,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  InkWell(onTap:()=> Navigator.pop(context),child: Icon(Icons.arrow_back_ios)),
                  _buildTabs(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildTabs(){
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Profile Icon + Name
        Icon(Icons.account_circle, size: 100,),
        CustomText(text: 'Account Name', styleName: 'displayMedium',fontWeight: FontWeight.bold,),
        VerticalSpacing(2),
        //Switch To Demo + Invite

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SideMenuTab(texts:[TextConst.menuAccounts.tr(),] ,onTap: (){
                AppNavigator.navigatePushTo(context,AppRoute.payments.name);
              }, icons: [Icons.safety_check ],
                trailingIcons:[Icons.add],isHorizontal:false,),
            ),
            HorizontalSpacing(2),
            Expanded(
              child: SideMenuTab(texts:[TextConst.menuAccounts.tr(),] ,onTap: (){
                AppNavigator.navigatePushTo(context,AppRoute.profile.name);
              }, icons: [Icons.safety_check ],
                trailingIcons:[Icons.add],isHorizontal:false,),
            ),
          ],
        ),

        VerticalSpacing(2),
        //Accounts
        SideMenuTab(texts:[TextConst.menuAccounts.tr(),TextConst.menuAboutUs.tr()] ,onTap: (){
          AppNavigator.navigateGoTo(context,AppRoute.account.name);
        }, icons: [Icons.safety_check , Icons.add],isHorizontal: true,),
        VerticalSpacing(0),

        //Payments
        // SideMenuTab(text:TextConst.menuPayments.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Analytics
        // SideMenuTab(text:TextConst.menuAnalytics.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Settings
        // SideMenuTab(text:TextConst.menuSettings.tr() ,onTap: (){}),
        VerticalSpacing(2),
        //Mailbox
        // SideMenuTab(text:TextConst.menuMailbox.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Reports
        // SideMenuTab(text:TextConst.menuReports.tr() ,onTap: (){}),
        VerticalSpacing(2),
        //Education
        // SideMenuTab(text:TextConst.menuEducation.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Trading Glossary
        // SideMenuTab(text:TextConst.menuTradingGlossary.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Economic Calendar
        // SideMenuTab(text:TextConst.menuEconomicCalendar.tr() ,onTap: (){}),
        VerticalSpacing(2),
        //Support
        // SideMenuTab(text:TextConst.menuSupport.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //FAQ
        // SideMenuTab(text:TextConst.menuFAQ.tr() ,onTap: (){}),
        VerticalSpacing(0),
        //Agreements
        // SideMenuTab(text:TextConst.menuAgreements.tr() ,onTap: (){}),
        VerticalSpacing(0),
        // About Us
        // SideMenuTab(text:TextConst.menuAboutUs.tr() ,onTap: (){}),


      ],
    );
  }
}
