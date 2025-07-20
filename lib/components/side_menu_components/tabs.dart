import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../util/const.dart';
import '../../util/vh_spacing.dart';
import '../app_components/custom_text.dart';

class SideMenuTab extends StatelessWidget {
  final List<String> texts;
  final List<String>? subtitles;
  final List<dynamic> icons;
  final List<dynamic>? trailingIcons;
  final VoidCallback onTap;
  final bool isHorizontal;

  const SideMenuTab({
    super.key,
    required this.texts,
    required this.icons,
    required this.onTap,
    this.subtitles,
    this.trailingIcons,
    this.isHorizontal = false,
  });

  Widget _buildIcon(dynamic iconData) {
    if (iconData is IconData) {
      return Icon(iconData, size: 35);
    } else if (iconData is String) {
      return SvgPicture.asset(iconData, width: 35, height: 35);
    } else {
      return const SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    final itemCount = texts.length;

    final content = isHorizontal
        ? Column(
      children: List.generate(itemCount, (index) {
        final text = texts[index];
        final icon = icons.length > index ? icons[index] : null;
        final trailing = trailingIcons != null && trailingIcons!.length > index
            ? trailingIcons![index]
            : null;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              _buildIcon(icon),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(text: text, styleName: 'bodyLarge'),
                  if (subtitles != null && subtitles!.length > index && subtitles![index].isNotEmpty)
                    CustomText(
                      text: subtitles![index],
                      styleName: 'labelSmall',
                    ),
                ],
              ),
              const Spacer(),
              if (trailing != null) _buildIcon(trailing),
            ],
          ),
        );
      }),
    )
        : Column(
      children: List.generate(itemCount, (index) {
        final text = texts[index];
        final icon = icons.length > index ? icons[index] : null;
        final trailing = trailingIcons != null && trailingIcons!.length > index
            ? trailingIcons![index]
            : null;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildIcon(icon),
              const VerticalSpacing(0),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: text, styleName: 'bodyLarge'),
                      if (subtitles != null && subtitles!.length > index && subtitles![index].isNotEmpty)
                        CustomText(
                          text: subtitles![index],
                          styleName: 'labelSmall',
                        ),
                    ],
                  ),
                  if (trailing != null) ...[
                    const VerticalSpacing(0),
                    _buildIcon(trailing),
                  ],
                ],

              ),

            ],
          ),
        );
      }),
    );
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(BoxDeco.boxRadius),
        ),
        child: content,
      ),
    );
  }
}


//Old Design
// return GestureDetector(
// onTap: onTap,
// child: Container(
// padding: GloPad.edgeInsets10,
// decoration: BoxDecoration(
// color: Theme.of(context).bpSlider,
// border: Border.all(
// color:AppTheme.greyBorder,
// ),
// borderRadius: BorderRadius.circular(5)
// ),
// child:Row(
// children: [
// CustomText(text: text,),
// Spacer(),
// Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Theme.of(context).bpIcon,)
// ],
// )
// ),
// );