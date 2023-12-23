
import 'package:flutter/material.dart';

import 'mobile_layout.dart';
import 'tablet_layout.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth > 600){
            return const TabletLayout();
          }else{
            return const MobileLayout();
          }
          
        }
      ),
    );
  }
}
