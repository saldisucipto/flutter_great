import 'package:flutter/material.dart';

class MealDetaialsScreen extends StatelessWidget {
  static const routeName = '/details-meals-screen';

  const MealDetaialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // menerima argumrnt
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Screen For Meal $mealId'),
      ),
      body: Center(
        child: Text("Details Screen For Meal $mealId"),
      ),
    );
  }
}
