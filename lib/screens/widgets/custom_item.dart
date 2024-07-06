import 'package:flutter/material.dart';

class CustomItem extends StatelessWidget {
  const CustomItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffB5B4B6),
          borderRadius: BorderRadius.circular(8)),
    );
  }
}
