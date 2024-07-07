import 'package:adaptaive_app/screens/widgets/custom_item.dart';
import 'package:adaptaive_app/screens/widgets/custom_item2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          flex: 2,
          child: CustomItem(),
        ),
        Expanded(
          child: CustomItem2(),
        ),
      ],
    );
  }
}
