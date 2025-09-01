import 'package:flutter/material.dart';

import '../utils/recipe.dart';

class FoodRecipesScreen extends StatefulWidget {
  final List<Recipe> recipes;

  const FoodRecipesScreen({super.key, required this.recipes});

  @override
  State<FoodRecipesScreen> createState() => _FoodRecipesScreenState();
}

class _FoodRecipesScreenState extends State<FoodRecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Food Recipes',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.blue.shade600,
        ),
        body: ListView.builder(
          itemCount: widget.recipes.length,
          itemBuilder: (context, i) => ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text(
              widget.recipes[i].title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black87,
              ),
            ),
            subtitle: Text(
              widget.recipes[i].description,
              style: TextStyle(color: Colors.black38),
            ),
          ),
        ),
      ),
    );
  }
}
