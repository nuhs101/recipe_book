import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Map<String, String>> favorites;

  const FavoritesScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorite Recipes')),
      body:
          favorites.isEmpty
              ? Center(child: Text('No favorite recipes yet!'))
              : ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(favorites[index]['name']!));
                },
              ),
    );
  }
}
