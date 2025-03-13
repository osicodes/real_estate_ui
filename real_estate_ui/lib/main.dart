import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart' as iconsax;
import 'package:icons_plus/icons_plus.dart';
import 'src/classes/image_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.redAccent),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: <Widget>[
      Positioned.fill(
        child:  Image.asset(
          "${ImageAssetsFile.highline}",
          fit: BoxFit.fitHeight,
        ),
      ),
            Positioned(
                bottom: 0,
                child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(40)),
                height: 400,
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children:[
                  Text(
                    "Find The Perfect Place For You",
                  style: TextStyle(fontSize: 40)),
                  Text("Discover and find your dream place and make it the best for you"),
                  OutlinedButton.icon(
                    onPressed: (){},
                    label: Text("Continue With Google"),
                    icon: Brand(Brands.google),
                  ),
                  OutlinedButton.icon(
                    onPressed: (){},
                    label: Text("Continue With Facebook"),
                    icon: Brand(Brands.facebook),
                  ),
            ],
            ),),
                ),
            ),
          ],
        ),
    );
  }
}
