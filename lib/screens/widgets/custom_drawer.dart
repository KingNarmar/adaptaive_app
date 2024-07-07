import 'package:adaptaive_app/screens/widgets/custom_drawer_item_list_view.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: Color(0xffDCDBDC),
      elevation: 0,
      child: Column(
        children: [
          DrawerHeader(
            child: Icon(
              Icons.favorite,
              //change icon size
              size: 56,
            ),
          ),
          //add space between the header section and the List
          SizedBox(
            height: 16,
          ),
          CustomDrawerItemListView(),
        ],
      ),
    );
  }
}
