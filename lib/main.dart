import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

// Flexible Widget
/// Bagaimana kita menysusun kontent pada layar secara flex dan dibagi sesuai dengan ukuran layarnya
/// Akan dibagi secara menyeluruh sesuai dengan value flex

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Flexible Widgets"),
      ),
      body: Column(
        children: [
          // Bagian Paling Atas
          Flexible(
            flex: 1, // Mengambil 1 Bagian Pada Screen
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Center(
                      child: Text("Container 1"),
                    ),
                    color: Colors.greenAccent,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Center(
                      child: Text("Container 1"),
                    ),
                    color: Colors.blueGrey,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Center(
                      child: Text("Container 1"),
                    ),
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2, // Mengambil 2 Bagian Pada Screen
            child: Container(
              child: const Center(
                child: Text("Container 2"),
              ),
              color: Colors.amberAccent,
            ),
          ),
          Flexible(
            flex: 1, // Mengambil 1 Bagian Pada Screen
            child: Container(
              child: const Center(
                child: Text("Container 3"),
              ),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
