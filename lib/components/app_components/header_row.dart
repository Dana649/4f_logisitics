import 'package:flutter/material.dart';
import '../../util/vh_spacing.dart';
import 'custom_text.dart';

class HeaderRow extends StatelessWidget {
  final String? title;
  final String? subTitle;
  final VoidCallback? onBack;
  final Widget? child;

  const HeaderRow({
    super.key,
    this.title,
    this.subTitle,
    this.onBack,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Baseline(
              baseline: 24,
              baselineType: TextBaseline.alphabetic,
              child: GestureDetector(
                onTap: () {
                  (onBack ?? () => Navigator.of(context).pop())();
                },

                child:Icon(Icons.arrow_back, size: 22),
              ),
            ),
            const HorizontalSpacing(3),
            if(title !=null)
              ...[
                Baseline(
                  baseline: 24, // Match baseline with the icon
                  baselineType: TextBaseline.alphabetic,
                  child: CustomText(
                    text: title!,
                    styleName: 'headlineLarge',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],


          ]
    );
  }
}
