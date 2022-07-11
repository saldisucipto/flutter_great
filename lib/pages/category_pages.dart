import 'package:flutter/material.dart';
import 'package:flutudemy/components/kategori_items.dart';
import 'package:flutudemy/dummy_kategori.dart';

class KategoriScreen extends StatelessWidget {
  const KategoriScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((catData) => KategoriItems(
                id: catData.id, title: catData.title, color: catData.color))
            .toList(),
      ),
    );
  }
}
