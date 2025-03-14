library custom_bottom_navigation_bar;

// import 'dart:math';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final BorderRadius? borderRaduis;
  const CustomBottomNavigationBar({super.key, this.borderRaduis});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _borderRaduis =
            borderRaduis ?? BorderRadius.all(Radius.circular(20));
        return Container();
      },
    );
  }
}
