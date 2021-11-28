import 'package:flutter/material.dart';
import 'package:greatapp/pages/navpages/bar_item_pages.dart';
import 'package:greatapp/pages/home_page.dart';
import 'package:greatapp/pages/navpages/my_pages.dart';
import 'package:greatapp/pages/navpages/search_pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
// List Pages
  List pages = [
    HomePage(),
    BarItemPage(),
    SearcPages(),
    MyPage(),
  ];

  int currentIndex = 0;
  // Ontap Function
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black26,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.apps),
          ),
          BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(Icons.bar_chart_sharp),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search_sharp),
          ),
          BottomNavigationBarItem(
            label: "My",
            icon: Icon(Icons.person_pin),
          ),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
