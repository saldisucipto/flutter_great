import 'package:flutter/material.dart';
import 'package:flutudemy/components/meal_item.dart';
import '../dummy_kategori.dart';

class CategoryMealsScreen extends StatelessWidget {
  // ststic properties untuk route name
  static const routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // variable untuk menampung data argument yang diberikan oleh namedroute
    var argsRoute =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? categoryTitle = argsRoute['title'];
    final String? categoryID = argsRoute['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryID);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            complexity: categoryMeals[index].complexity,
            affordability: categoryMeals[index].affordability,
          );
        }),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
