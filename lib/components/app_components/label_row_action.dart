import 'package:f_logistics/util/themes.dart';
import 'package:flutter/material.dart';

import 'custom_text.dart';

class LabelActionRow extends StatelessWidget {
  final String label;
  final String actionText;
  final VoidCallback onPressed;

  const LabelActionRow({
    super.key,
    required this.label,
    required this.actionText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomText(text: label, styleName: 'displaySmall',fontWeight: FontWeight.w700, ),

        const Spacer(),
        TextButton(
          onPressed: onPressed,
          child: Text(actionText,style: TextStyle(color: AppTheme.primaryGreen),),
        ),
      ],
    );
  }
}
