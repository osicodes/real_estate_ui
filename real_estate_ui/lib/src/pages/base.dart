import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:projects/src/pages/chat.dart';
import 'package:projects/src/pages/explore.dart';

import 'home/home.dart';

class Base extends StatefulWidget {
  const Base({super.key});

  @override
  State<Base> createState() => _BaseState();
}

class _BaseState extends State<Base> {
  int _currentIndex = 0;
  final List<Widget> _screens = [Home(), Explore(), Chat()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      extendBody: true,
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Iconsax.home_1_copy),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.discover_1_copy),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Iconsax.message_2_copy),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
