import 'package:flutter/material.dart';
import 'package:flutudemy/pages/category_meals_pages.dart';
import 'package:flutudemy/pages/category_pages.dart';
import 'package:flutudemy/pages/fav_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Makanan"),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: "Kategori",
              ),
              Tab(
                icon: Icon(Icons.star),
                text: "Favorit",
              )
            ],
          ),
        ),
        body: const TabBarView(children: [
          KategoriScreen(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
