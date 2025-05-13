import 'package:flutter/material.dart';

import 'src/design_system/designy_system.dart';
import 'src/modules/modules.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'FoodSnaps',
      theme: FoodSnapsTheme.theme,
      home: HomeScreen(),
    );
  }
}
