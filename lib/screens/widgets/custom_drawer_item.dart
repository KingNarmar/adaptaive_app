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
      // add padding
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        //Wrap the text with fitted Box and use Scale down and aligment
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            customDrawerItemModel.text,
            style: const TextStyle(letterSpacing: 4),
          ),
        ),
      ),
    );
  }
}
