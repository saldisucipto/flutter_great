import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    /**
     * Stack Widget
     * Adalah sebuah Widget untuk menyusun content pad screen secara bertumpuk 
     */
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack Widgets"),
      ),
      body: Stack(
        children: [
          // Background
          Column(
            children: [
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(flex: 1, child: Container(color: Colors.white)),
                    Flexible(flex: 1, child: Container(color: Colors.black54)),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(flex: 1, child: Container(color: Colors.black54)),
                    Flexible(flex: 1, child: Container(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      "Ini Adalah Text yang ad apada lapisan tengah pada widgtes Stack",
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              )
            ],
          ),
          // Listview dengan Text
          Align(
            alignment: const Alignment(0.9, 0.5),
            child: TextButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  width: 100,
                  height: 40,
                  child: const Center(
                    child: Text(
                      "BUTTON ME",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )),
          )
          // button di tengah bawah
        ],
      ),
    );
  }
}
