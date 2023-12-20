import 'package:flutter/material.dart';

import '../models/drawer_item_model.dart';
import 'drawer_item.dart';

class CustomeDrawerItemsListView extends StatelessWidget {
  const CustomeDrawerItemsListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return DrawerItem(drawerItemModel: items[index]);
      },
    );
  }
}
