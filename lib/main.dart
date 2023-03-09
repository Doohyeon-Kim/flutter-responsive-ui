import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/pages/root_page.dart';
import 'package:folivora_design_system/folivora_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FvLightTheme.themeData,
      home: const RootPage(),
    );
  }
}
