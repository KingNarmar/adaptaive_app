import 'package:adaptaive_app/screens/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_app/screens/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          CustomSliverGrid(),
          CustomSliverList()
        ],
      ),
    );
  }
}
