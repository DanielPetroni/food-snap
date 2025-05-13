import 'package:flutter/material.dart';

import '../../design_system/designy_system.dart' show FoodSnapsSize;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FoodSnap", style: TextTheme.of(context).titleLarge), centerTitle: false),
      body: Padding(
        padding: const EdgeInsets.all(FoodSnapsSize.paddingScreen),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(decoration: InputDecoration(label: Text("Busque receitas"), suffixIcon: Icon(Icons.search))),
            SizedBox(height: FoodSnapsSize.paddingItem * 3),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {},
                    label: Text("Identifique igredientes"),
                  ),
                ),
              ],
            ),
            SizedBox(height: FoodSnapsSize.paddingItem * 4),
            Text("Receitas geradas pela IA", style: TextTheme.of(context).headlineSmall),
          ],
        ),
      ),
    );
  }
}
