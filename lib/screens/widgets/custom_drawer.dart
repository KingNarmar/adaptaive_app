import 'package:adaptaive_app/screens/widgets/custom_drawer_item_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffD0CBD6),
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              size: 50,
            ),
          ),
          CustomDrawerItemListView(),
        ],
      ),
    );
  }
}
