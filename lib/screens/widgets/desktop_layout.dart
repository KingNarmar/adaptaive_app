import 'package:adaptaive_app/screens/widgets/custom_desktop_widget.dart';
import 'package:adaptaive_app/screens/widgets/custom_drawer.dart';
import 'package:adaptaive_app/screens/widgets/tablet_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16,),
            child: TabletLayout(),
          ),
        ),
        Expanded(
          child: CustomDesktopWidget(),
        )
      ],
    );
  }
}
