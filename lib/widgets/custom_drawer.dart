import 'package:adaptaive_app/models/drawer_item_model.dart';
import 'package:flutter/material.dart';

import 'custom_drawer_items_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title: "DASHBOARD", icon: Icons.home),
    DrawerItemModel(title: "SETTINGS", icon: Icons.settings),
    DrawerItemModel(title: "ABOUT", icon: Icons.info),
    DrawerItemModel(title: "LOGOUT", icon: Icons.logout),
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xffD6D2D9),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            CustomeDrawerItemsListView(items: items)
          ],
        ),
      ),
    );
  }
}
