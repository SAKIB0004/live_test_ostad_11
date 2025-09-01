class Recipe {
  final String title;
  final String description;
  final List<String> ingredients;

  Recipe({
    required this.title,
    required this.description,
    required this.ingredients,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
    title: json['title'] as String? ?? '',
    description: json['description'] as String? ?? '',
    ingredients: (json['ingredients'] as List<dynamic>? ?? [])
        .map((e) => e.toString())
        .toList(),
  );
}