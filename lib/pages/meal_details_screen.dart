import 'package:flutter/material.dart';
import 'package:flutudemy/models/data_meals.dart';
import '../dummy_kategori.dart';
import '../widgets/list_box_widgets.dart';
import '../widgets/title_widgets.dart';

class MealDetaialsScreen extends StatelessWidget {
  static const routeName = '/details-meals-screen';

  const MealDetaialsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // menerima argumrnt
    final String mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere(((meal) => meal.id == mealId));
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              const TitleTextContainer(
                title: 'INGREDIENTS',
              ),
              ContainerListWidgets(
                child: ListView.builder(
                  itemBuilder: ((context, index) => Card(
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Row(
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  margin: const EdgeInsets.only(right: 10),
                                  width: 30,
                                  height: 30,
                                  child: Center(
                                    child: Text(
                                      '${index + 1}',
                                      style:
                                          const TextStyle(color: Colors.blue),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                selectedMeal.ingredients[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )),
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              const TitleTextContainer(title: "Steps"),
              ContainerListWidgets(
                child: ListView.builder(
                  itemBuilder: ((context, index) => Card(
                        color: Theme.of(context).primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Center(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 30,
                                    height: 30,
                                    child: Center(
                                      child: Text(
                                        '# ${index + 1}',
                                        style:
                                            const TextStyle(color: Colors.blue),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  selectedMeal.steps[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  softWrap: false,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                  itemCount: selectedMeal.steps.length,
                ),
              )
            ],
          ),
        ));
  }
}
