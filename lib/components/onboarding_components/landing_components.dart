import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/pages/login_pages/login_page.dart';
import 'package:f_logistics/router/go_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../generated/assets.dart';
import '../../remote/providers/auth_provider.dart';
import '../../util/text_const.dart';
import '../../util/themes.dart';
import '../../util/vh_spacing.dart';
import '../app_components/custom_text.dart';
import '../app_components/elevated_button.dart';

class LandingComponent extends StatefulWidget {
  const LandingComponent({super.key, required this.backgroundImage , required this.subTitle,required this.title});
  final String  backgroundImage ;
  final String subTitle;
  final String title;


  @override
  State<LandingComponent> createState() => _LandingComponentState();
}

class _LandingComponentState extends State<LandingComponent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Background Image
        // Image.asset(Assets.iconsGoogle),
        //Title
        CustomText(text: widget.title, styleName: 'displaySmall',fontWeight: FontWeight.w700, fontSize: 32,),
        //Subtitle
        CustomText(text: widget.subTitle, styleName: 'bodyMedium',fontWeight: FontWeight.w500, fontSize: 18,textAlign: TextAlign.center,),

        VerticalSpacing(5),
        //Google SignIn
        // if (Platform.isAndroid)
        Consumer<AuthProvider>(
          builder:
              (BuildContext context, authProvider, Widget? child) {
            return ResponsiveElevatedButton(

                onPressed: () async {

                },
                borderColor: AppTheme.bpLightGrey,
                backgroundColor: AppTheme.bpWhite,
                icon: Image.asset(Assets.iconsGoogle,width: 15,height: 15,),
                child: CustomText(text:  TextConst.btnContinueGoogle.tr(),
                    color: AppTheme.bpBlack,fontSize: 16)


            );

          },
        ),
        VerticalSpacing(2),

        ResponsiveElevatedButton(
            onPressed: (){},
            child:CustomText(text:  TextConst.btnSignUp.tr(),
              color: AppTheme.bpWhite, fontSize: 16,)
        ),
        VerticalSpacing(2),
        ResponsiveElevatedButton(
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder:  (BuildContext context) =>LoginPage()));
              },
            borderColor:  AppTheme.bpBlack,
            backgroundColor:  AppTheme.bpWhite,
            child:CustomText(text:  TextConst.btnSignIn.tr(),
                color: AppTheme.bpBlack,fontSize: 16)),
        VerticalSpacing(1),

      ],
    );
  }
}
