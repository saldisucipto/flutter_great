import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // variable untuk menampung data argument yang diberikan oleh namedroute
    var argsRoute =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final String? categoryTitle = argsRoute['title'];
    final String? categoryID = argsRoute['id'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: Center(
        child: Text(categoryTitle),
      ),
    );
  }
}
