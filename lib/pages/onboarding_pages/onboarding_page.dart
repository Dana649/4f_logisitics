import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../components/app_components/logo.dart';
import '../../components/onboarding_components/landing_components.dart';
import '../../generated/assets.dart';
import '../../util/const.dart';
import '../../util/text_const.dart';
import '../../util/vh_spacing.dart';

class WelcomingPage extends StatefulWidget {
  const WelcomingPage({super.key});

  @override
  State<WelcomingPage> createState() => _WelcomingPageState();
}

class _WelcomingPageState extends State<WelcomingPage> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<Widget> _pages = [
    LandingComponent(
      backgroundImage: Assets.onboardingAllInOne,
      title: TextConst.onBoardingAllInOneTitle.tr(),
      subTitle: TextConst.onBoardingAllInOneSubTitle.tr(),
    ),
    LandingComponent(
      backgroundImage: Assets.onboardingFastDelivery,
      title: TextConst.onBoardingEasyPaymentTitle.tr(),
      subTitle: TextConst.onBoardingFastDeliverySubTitle.tr(),
    ),
    LandingComponent(
      backgroundImage: Assets.onboardingPayment,
      title: TextConst.onBoardingEasyPaymentTitle.tr(),
      subTitle: TextConst.onBoardingEasyPaymentSubTitle.tr(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: GloPad.edgeInsetsMainPages,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const VerticalSpacing(2),

              const Logo(),
              Expanded(
                child: PageView.builder(
                  controller: _controller,
                  itemCount: _pages.length,
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, index) => _pages[index],
                ),
              ),

              const VerticalSpacing(2),

              SmoothPageIndicator(
                controller: _controller,
                count: _pages.length,
                effect: WormEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  dotHeight: 8,
                  dotWidth: 8,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}
