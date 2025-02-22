import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Alfredo',
      'details':
          'Ingredients: Pasta, Heavy Cream, Parmesan Cheese, Garlic, Butter.\nInstructions: Cook pasta, melt butter and cook garlic, add heavy cream and parmesan cheese, add cooked pasta.',
    },
    {
      'name': 'Tuna Sandwich',
      'details':
          'Ingredients: Tuna, Bread, Mayo, Olive Oil.\nInstructions: Toast Bread, mix tuna with mayo and olive oil, spread tuna mix on bread.',
    },
    {
      'name': 'Pancakes',
      'details':
          'Ingredients: Flour, Eggs, Milk, Sugar, Vanilla Extract.\nInstructions: Mix ingredients, cook on pan, serve hot.',
    },
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(recipe: recipes[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
