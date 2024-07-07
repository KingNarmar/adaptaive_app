import 'package:adaptaive_app/screens/widgets/custom_drawer_item.dart';
import 'package:flutter/material.dart';

import '../../models/custom_drawer_item_model.dart';

class CustomDrawerItemListView extends StatelessWidget {
  const CustomDrawerItemListView({super.key});
  final List<CustomDrawerItemModel> itemsList = const [
    CustomDrawerItemModel(icon: Icons.home, text: "DASHBOARD"),
    CustomDrawerItemModel(icon: Icons.settings, text: "SETTINGS"),
    CustomDrawerItemModel(icon: Icons.info, text: "ABOUT"),
    CustomDrawerItemModel(icon: Icons.logout, text: "LOGOUT"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: itemsList.length,
      itemBuilder: (context, index) {
        return CustomDrawerItem(customDrawerItemModel: itemsList[index]);
      },
    );
  }
}
