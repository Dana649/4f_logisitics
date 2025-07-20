import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/elevated_button.dart';
import 'package:f_logistics/components/app_components/logo.dart';
import 'package:f_logistics/router/go_route.dart';
import 'package:f_logistics/util/text_const.dart';
import 'package:f_logistics/util/themes.dart';
import 'package:f_logistics/util/vh_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../components/app_components/custom_text.dart';
import '../../util/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  bool _rememberMe = false;

  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  bool offSecureText = true;
  Future<void> _saveRememberedCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('rememberMe', _rememberMe);
    if (_rememberMe) {
      await prefs.setString('email', emailCtrl.text);
      await prefs.setString('password', passCtrl.text);
    } else {
      await prefs.remove('email');
      await prefs.remove('password');
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
        child: Padding(
        padding: GloPad.edgeInsetsMainPages,
        child: Column(
        children: [
          Logo(),
          VerticalSpacing(3),
          //Welcome Text
          CustomText(
              text:TextConst.welcomeTitle,
              fontWeight: FontWeight.bold,
              fontSize:40  ),

         _buildLoginForm(),
          VerticalSpacing(3),
          _buildSignUp(),
          VerticalSpacing(4),
          _buildButton(),
        ]))));
  }
  Widget _buildLoginForm(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VerticalSpacing(3),
        //Email
        CustomText(
            text: TextConst.signInPassBoxTitle.tr(),
            styleName:'labelLarge'
        ),
        VerticalSpacing(2),

        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus(); // Dismiss the keyboard
          },
          validator: (String? value) {
            if (value!.isEmpty) {
              return TextConst.signInEmailBoxErrEmpty.tr();
            } else if (!RegExp(pattern).hasMatch(value)) {
              return TextConst.signInEmailBoxErrValid.tr();
            }
            return null;
          },
          onChanged: (value) { },
          inputFormatters: [
            FilteringTextInputFormatter.allow(
              RegExp(
                  r'[a-zA-Z0-9._%+-@À-ÿ]'),
            ),
          ],
          controller: emailCtrl,
          keyboardType: TextInputType.emailAddress,
          textDirection: ui.TextDirection.ltr,
          decoration: InputDecoration(
            hintText: TextConst.signInEmailBoxHint.tr(),
            hintStyle: TextStyle(
                fontSize: 12,
                color: Theme.of(context).bpHintDark),

          ),
        ),
        const VerticalSpacing(2),
        //Password
        CustomText(
            text: TextConst.signInPassBoxTitle.tr(),
            styleName:'labelLarge'
        ),
        const VerticalSpacing(2),
        TextFormField(
          onTapOutside: (event) {
            FocusScope.of(context).unfocus(); // Dismiss the keyboard
          },
          validator: (String? value) {
            if (value!.isEmpty) {

              return TextConst.signInPassBoxErrEmpty.tr();
            }

            return null;
          },
          onChanged: (value) {},
          controller: passCtrl,
          obscureText: offSecureText,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            hintText: "••••••••",
            suffixIcon: IconButton(
              icon: Icon(
                offSecureText
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  offSecureText = !offSecureText;
                });
              },
            ),
          ),
        ),
        //Remember Me and Forgot Pass
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //Remember Me
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  checkColor: AppTheme.bpWhite,
                  activeColor: AppTheme.primaryGreen,
                  value: _rememberMe,
                  onChanged: (bool? value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                    _saveRememberedCredentials();
                  },
                ),
                CustomText(
                    text: TextConst.signInRememberMe.tr(),
                    styleName:'labelLarge'
                ),
              ],
            ),
            //Forgot Pass
            TextButton(
              child:
              CustomText(
                  text: TextConst.signInForgotPass.tr(),
                  styleName:'labelLarge'
              ),
              onPressed: () { },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSignUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        CustomText(
          text: TextConst.signInSignUpText.tr(),
          styleName:'titleSmall',
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: () {},
          child:
          CustomText(
            text: TextConst.signInSignUpBtn.tr(),
            styleName:'titleMedium',
            color: AppTheme.bpBlue,
          ),
        ),
      ],
    );
  }  Widget _buildButton(){
    return ResponsiveElevatedButton(
      onPressed: (){
        AppNavigator.navigateGoTo(context,  AppRoute.home.name, );
      },
        child: TextConst.btnSignIn.tr());
  }
}
