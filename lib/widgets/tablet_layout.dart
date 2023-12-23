import 'package:adaptaive_app/widgets/custom_list.dart';
import 'package:flutter/material.dart';

import 'custom_sliver_list.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        CustomList(),
        CustomSliverList()
      ],
    );
  }
}