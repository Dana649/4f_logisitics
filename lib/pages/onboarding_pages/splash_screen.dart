

import 'package:f_logistics/components/app_components/logo.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:go_router/go_router.dart';

import '../../components/app_components/custom_text.dart';
import '../../util/themes.dart';
import 'package:flutter/material.dart';

import '../../util/vh_spacing.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        if (!mounted) return;
        context.push('/welcome');
      });
    });
  }





  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(),
            VerticalSpacing(4),
            CustomText(
                text:'Logistics For Life',
                fontWeight: FontWeight.bold,
                fontSize:40  ),
            VerticalSpacing(5),
            SpinKitCircle(
              color: AppTheme.primaryGreen,
              size: 50.0,
              controller: _controller,
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy target page (replace this)


