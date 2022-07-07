import 'package:flutter/material.dart';
import 'package:flutudemy/models/data_meals.dart';
import 'package:flutudemy/pages/meal_details_screen.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  const MealItem({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.complexity,
    required this.affordability,
    required this.id,
  }) : super(key: key);

  String? get complexityText {
    if (complexity == Complexity.simple) {
      return "Simple";
    } else if (complexity == Complexity.chellanging) {
      return "Chellenging";
    } else {
      return "Hard";
    }
  }

  String? get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return "Affordable";
      case Affordability.luxurious:
        return "Luxurius";
      case Affordability.pricey:
        return "Pricey";
      default:
        return "Unknown";
    }
  }

  void selectMeal(BuildContext context) {
    // print(" ${title} Meal Selected");
    Navigator.of(context)
        .pushNamed(MealDetaialsScreen.routeName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.network(
                  imageUrl,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 20,
                right: 10,
                child: Container(
                  width: 300,
                  color: Colors.black45,
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(Icons.schedule),
                    const SizedBox(
                      width: 6,
                    ),
                    Text('$duration')
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.workspace_premium_outlined),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      complexityText!,
                    )
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.monetization_on_outlined),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      affordabilityText!,
                    )
                  ],
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
