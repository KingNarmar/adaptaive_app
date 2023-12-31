import 'package:adaptaive_app/widgets/custom_drawer.dart';
import 'package:adaptaive_app/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomDrawer(),
        Expanded(child: TabletLayout()),
      ],
    );
  }
}
