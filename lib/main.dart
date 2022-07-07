import 'package:flutter/material.dart';
import 'package:flutudemy/pages/category_meals_pages.dart';
import 'package:flutudemy/pages/category_pages.dart';
import 'package:flutudemy/pages/meal_details_screen.dart';

void main(List<String> args) {
  // main function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Makanan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
            .copyWith(secondary: Colors.amber),
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "RaleWay",
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 41, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 41, 1),
              ),
              headline1: const TextStyle(
                fontSize: 18,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.white70,
              ),
            ),
      ),
      // home: const KategoriScreen(),
      initialRoute: '/',
      routes: {
        // mengatur index route
        '/': (context) => const KategoriScreen(),
        // membuat named routes
        CategoryMealsScreen.routeName: (context) => const CategoryMealsScreen(),
        MealDetaialsScreen.routeName: (context) => const MealDetaialsScreen(),
      },
    );
  }
}
