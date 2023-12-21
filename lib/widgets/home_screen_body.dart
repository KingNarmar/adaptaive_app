import 'package:adaptaive_app/widgets/custom_list.dart';
import 'package:adaptaive_app/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_app/widgets/custom_sliver_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(child: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 600) {
                return const CustomList();
              } else {
                return const CustomSliverGrid();
              }
            },
          )),
          const CustomSliverList()
        ],
      ),
    );
  }
}
