import 'package:live_test_ostad_11/ui/utils/recipe.dart';

class RecipesResponse {
  final List<Recipe> recipes;
  RecipesResponse({required this.recipes});

  factory RecipesResponse.fromJson(Map<String, dynamic> json) {
    final list = (json['recipes'] as List<dynamic>? ?? []);
    return RecipesResponse(
      recipes: list
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}