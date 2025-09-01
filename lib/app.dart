import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:live_test_ostad_11/ui/scrrens/food_recipes_screen.dart';
import 'package:live_test_ostad_11/ui/utils/recipe.dart';
import 'package:live_test_ostad_11/ui/utils/recipes_response.dart';


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final List<Recipe> _recipes;

  @override
  void initState() {
    super.initState();
    final data = RecipesResponse.fromJson(
      jsonDecode(rawJson) as Map<String, dynamic>,
    );
    _recipes = data.recipes;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipes',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: FoodRecipesScreen(recipes: _recipes),
    );
  }
}

const String rawJson = '''
{
  "recipes": [
    {"title": "Pasta Carbonara","description": "Creamy pasta dish with bacon and cheese.","ingredients": ["spaghetti","bacon","egg","cheese"]},
    {"title": "Caprese Salad","description": "Simple and refreshing salad with tomatoes, mozzarella, and basil.","ingredients": ["tomatoes","mozzarella","basil"]},
    {"title": "Banana Smoothie","description": "Healthy and creamy smoothie with bananas and milk.","ingredients": ["bananas","milk"]},
    {"title": "Chicken Stir-Fry","description": "Quick and flavorful stir-fried chicken with vegetables.","ingredients": ["chicken breast","broccoli","carrot","soy sauce"]},
    {"title": "Grilled Salmon","description": "Delicious grilled salmon with lemon and herbs.","ingredients": ["salmon fillet","lemon","olive oil","dill"]},
    {"title": "Vegetable Curry","description": "Spicy and aromatic vegetable curry.","ingredients": ["mixed vegetables","coconut milk","curry powder"]},
    {"title": "Berry Parfait","description": "Layered dessert with fresh berries and yogurt.","ingredients": ["berries","yogurt","granola"]}
  ]
}
''';
