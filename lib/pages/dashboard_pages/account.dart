import 'package:flutter/material.dart';

import '../../components/app_components/profile_header.dart';
import '../../main_scaffold.dart';
import '../../util/const.dart';
import '../side_menu_pages/side_menu.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = ScaffoldKeyProvider.of(context)?.scaffoldKey;

    return Scaffold(
      drawer: SideMenu(),
      key: scaffoldKey,
      body: SafeArea(
        child: Column(
          children: [
            ProfileHeader(scaffoldKey: scaffoldKey!, customerName: ''),
          ],
        ),
      ),
    );
  }
}

