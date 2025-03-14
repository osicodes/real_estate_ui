import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:projects/src/classes/style_for_text.dart';
import 'package:projects/src/pages/base.dart';

import '../classes/image_assets.dart';

class Entrance extends StatefulWidget {
  const Entrance({super.key});
  @override
  State<Entrance> createState() => _EntranceState();
}

class _EntranceState extends State<Entrance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(ImageAssetsFile.highline, fit: BoxFit.fitHeight),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              height: 400,
              width: MediaQuery.sizeOf(context).width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      "Find The Perfect Place For You",
                      style: StyleForText().josefin.copyWith(
                        color: Theme.of(context).colorScheme.onPrimary,
                        wordSpacing: -10,
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      "Discover and find your dream place and make it the best for you",
                      style: StyleForText().josefin.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                        wordSpacing: -2,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GutterLarge(),
                    OutlinedButton.icon(
                      onPressed: () {
                        _navigateToNextScreen(context);
                      },
                      label: Text(
                        "Continue With Google",
                        style: StyleForText().josefin.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          wordSpacing: -2,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      icon: Brand(Brands.google),
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(300, 50),
                        // side: BorderSide(
                        //   color: Theme.of(context).colorScheme.outline,
                        // ),
                      ),
                    ),
                    GutterMedium(),
                    OutlinedButton.icon(
                      onPressed: () {
                        _navigateToNextScreen(context);
                      },
                      label: Text(
                        "Continue With Facebook",
                        style: StyleForText().josefin.copyWith(
                          color: Theme.of(context).colorScheme.tertiary,
                          wordSpacing: -2,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      icon: Brand(Brands.facebook),
                      style: OutlinedButton.styleFrom(fixedSize: Size(300, 50)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Base()));
  }
}
