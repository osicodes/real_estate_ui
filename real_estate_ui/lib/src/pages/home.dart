import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:icons_plus/icons_plus.dart';

import '../classes/style_for_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.menu_outline,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),
                IconButton.filledTonal(
                  onPressed: () {},
                  icon: Icon(
                    Iconsax.search_normal_1_outline,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                  style: IconButton.styleFrom(
                    backgroundColor:
                        Theme.of(context).colorScheme.secondaryContainer,
                  ),
                ),
              ],
            ),
            GutterLarge(),
            Text(
              textAlign: TextAlign.left,
              "Find The",
              style: StyleForText().josefin.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                wordSpacing: 0,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              textAlign: TextAlign.left,
              "Perfect Home",
              style: StyleForText().josefin.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
                wordSpacing: 0,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "Discover the best home for you",
              style: StyleForText().josefin.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                wordSpacing: -1,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
