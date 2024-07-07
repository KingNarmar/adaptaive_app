import 'package:adaptaive_app/screens/widgets/custom_sliver_grid.dart';
import 'package:adaptaive_app/screens/widgets/custom_sliver_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth > 600) {
                  return const Text("Tablet Layout");
                } else {
                  return const CustomSliverGrid();
                }
              },
            ),
          ),
          const CustomSliverList()
        ],
      ),
    );
  }
}
