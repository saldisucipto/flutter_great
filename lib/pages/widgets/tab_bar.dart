import 'package:flutter/material.dart';

class TabAppBar extends StatelessWidget {
  const TabAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // jumlah tab yang akan kita buat
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Contoh App Bar"),
          bottom: const TabBar(
            indicator: BoxDecoration(
                color: Colors.cyan,
                border:
                    Border(left: BorderSide(color: Colors.white, width: 2))),
            tabs: [
              Tab(
                icon: Icon(Icons.android_outlined),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.save),
                text: "Tab 2",
              ),
              Tab(
                icon: Icon(Icons.opacity),
                text: "Tab 3",
              ),
              Tab(
                icon: Icon(Icons.delete),
                text: "Tab 4",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text("Tab 1"),
            ),
            Center(
              child: Text("Tab 2"),
            ),
            Center(
              child: Text("Tab 3"),
            ),
            Center(
              child: Text("Tab 4"),
            ),
          ],
        ),
      ),
    );
  }
}
