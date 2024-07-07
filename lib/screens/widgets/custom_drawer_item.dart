import 'package:adaptaive_app/models/custom_drawer_item_model.dart';
import 'package:flutter/material.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.customDrawerItemModel,
  });
  final CustomDrawerItemModel customDrawerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(customDrawerItemModel.icon),
      title: Text(
        customDrawerItemModel.text,
        style: const TextStyle(letterSpacing: 4),
      ),
    );
  }
}
