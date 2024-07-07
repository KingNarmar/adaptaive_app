import 'package:adaptaive_app/screens/widgets/desktop_layout.dart';
import 'package:adaptaive_app/screens/widgets/mobile_layout.dart';
import 'package:adaptaive_app/screens/widgets/tablet_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'adaptive_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AdaptiveLayout(
        //using call back function to create layouts in lazy way insted of creating all layouts with no needed
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
