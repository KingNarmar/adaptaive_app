import 'package:adaptaive_app/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MobileLayout();
        } else if (constraints.maxWidth < 900) {
          return const TabletLayout();
        } else {
          return const DesktopLayout();
        }
      }),
    );
  }
}
