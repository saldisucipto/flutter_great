import 'package:flutter/material.dart';
import 'package:flutudemy/pages/category_pages.dart';
import 'package:flutudemy/pages/fav_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = const [
    KategoriScreen(),
    FavoriteScreen(),
  ];

  int _selectedPagesIndex = 0;

  String titleText(int index) {
    if (index == 0) {
      return "Kategori Screen";
    } else {
      return "Favorit Screen";
    }
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPagesIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleText(_selectedPagesIndex).toString()),
      ),
      body: _pages[_selectedPagesIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPagesIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black54,
        type: BottomNavigationBarType.shifting,
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.category),
              label: "Kategori"),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue,
            icon: Icon(Icons.star),
            label: "Favorit",
          ),
        ],
      ),
    );
  }
}
