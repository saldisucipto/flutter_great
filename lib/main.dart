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
  List<Widget> datas = [];
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar List View"),
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  datas.add(Text("Data Ke " + counter.toString()));
                  counter++;
                });
              },
              child: const Text("Add Me+"),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  datas.removeLast();
                });
              },
              child: const Text("Delete Me-"),
            ),
          ],
        ),
        Column(
          children: datas,
        )
      ]),
    );
  }
}
