
import 'package:easy_localization/easy_localization.dart';
import 'package:f_logistics/components/app_components/white_container.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../generated/assets.dart';
import '../../util/const.dart';
import '../../util/text_const.dart';
import '../../util/themes.dart';
import '../../util/vh_spacing.dart';
import 'custom_text.dart';


class ProfileHeader extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  final String customerName;
  final bool? isHomePage;
  final GlobalKey? menuIconKey;
  final GlobalKey? accCenterIconKey;
  final GlobalKey? bannerIconKey;

  const ProfileHeader({
    super.key,
    required this.scaffoldKey,
    required this.customerName,
    this.isHomePage,
    this.menuIconKey,
    this.accCenterIconKey,
    this.bannerIconKey
  });

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  SharedPreferences? prefs;
  String? profilePic;
  String? _selectedLocation;
  final List<String> options = ['Time Square', 'Kinshasa', 'Lebanon',];

  @override
  void initState() {
    SharedPreferences.getInstance().then((prefsInstance) {
      prefs = prefsInstance;
      profilePic = prefs!.getString('userProfile') ?? " ";
      if (mounted) setState(() {});
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HorizontalSpacing(3),
          Stack(
            alignment: Alignment.center,
            children: [
              // Profile Image
              ClipOval(
                child: SizedBox(
                  width: 45,
                  height: 45,
                  child: Image.asset(
                    Assets.homeImages,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: -3,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    widget.scaffoldKey.currentState?.openDrawer();
                  },
                  key: widget.menuIconKey,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.menu,
                      size: 18,
                      color: Theme.of(context).iconTheme.color,
                    ),
                  ),
                ),
              ),
            ],
          ),
          HorizontalSpacing(4),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Deliver To',
              styleName: 'headlineSmall',
              color: AppTheme.greyText,
            ),
            const SizedBox(height: 6),
            SizedBox(
              width: 200, // <-- Provide fixed width or use context.screenWidth * 0.4
              child: DropdownButtonFormField<String>(
                value: _selectedLocation,
                style: Theme.of(context).textTheme.bodySmall,
                decoration: InputDecoration(
                  fillColor: AppTheme.bpWhite,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                isDense: true,
                icon: Icon(Icons.keyboard_arrow_down, color: AppTheme.primaryGreen),
                items: options
                    .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedLocation = value;
                  });
                },
              ),
            ),
          ],
        ),



        const Spacer(),

          // Notification and Cart Icons
          WhiteContainer(child: Icon(Icons.notifications)),
          const HorizontalSpacing(2),
          WhiteContainer(child: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }

}
