import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe Book',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomeScreen(), // The starting screen
    );
  }
}
