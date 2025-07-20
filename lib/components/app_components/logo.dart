import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../generated/assets.dart';

import '../../util/vh_spacing.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
         'assets/logos/tree.svg',
        ),
        const VerticalSpacing(2),
        SvgPicture.asset(
          Assets.logos4f,
        ),
      ],
    );
  }
}
