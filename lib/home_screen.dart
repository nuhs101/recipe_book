import 'package:flutter/material.dart';
import 'details_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  List<Map<String, String>> favoriteRecipes = [];

  void toggleFavorite(Map<String, String> recipe) {
    setState(() {
      if (favoriteRecipes.contains(recipe)) {
        favoriteRecipes.remove(recipe);
      } else {
        favoriteRecipes.add(recipe);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipe Book')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => FavoritesScreen(favorites: favoriteRecipes),
                ),
              );
            },
            child: Text('View Favorites'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recipes[index]['name']!),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => DetailsScreen(
                              recipe: recipes[index],
                              onFavoriteToggle: toggleFavorite,
                              isFavorite: favoriteRecipes.contains(
                                recipes[index],
                              ),
                            ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
