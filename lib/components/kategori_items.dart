import 'package:flutter/material.dart';
import 'package:flutudemy/pages/category_meals_pages.dart';

class KategoriItems extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  const KategoriItems(
      {Key? key, required this.id, required this.title, required this.color})
      : super(key: key);

  void selectCategory(BuildContext context) {
    // membuat berpindah dari pages ini ke page lain
    // Navigator.of(context).push(
    //   MaterialPageRoute(
    //     builder: (_) {
    //       return CategoryMealsScreen(
    //         categoryId: id,
    //         categoryTitle: title,
    //       );
    //     },
    //   ),
    // );
    // menggunkan pushnamed Route dengan menggunakan dan mengirimkan arguments
    Navigator.of(context).pushNamed(
      '/category-meals',
      arguments: {'id': id, 'title': title},
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
