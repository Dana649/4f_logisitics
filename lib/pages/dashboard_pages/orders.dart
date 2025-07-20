import 'package:flutter/material.dart';

import '../../components/app_components/profile_header.dart';
import '../../main_scaffold.dart';
import '../../util/const.dart';
import '../side_menu_pages/side_menu.dart';

class OrdersPage extends StatefulWidget {

  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

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

