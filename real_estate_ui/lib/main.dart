import 'package:flutter/material.dart';
import 'package:projects/src/config/apptheme/app_theme.dart';
import 'package:projects/src/pages/entrance.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Entrance(),
    );
  }
}
