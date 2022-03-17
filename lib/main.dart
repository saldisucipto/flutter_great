import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

/// Dragable Widgets
/// Pengenalan Dragable Widgets

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
  Color targetColor = Colors.blueAccent;
  bool isAccept = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dragable Widgtes"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
                // Setelah di drag dia akan berubah mejadi apa
                childWhenDragging: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
                // Bentuk Lingkarang ketika di drag
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.5),
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
                // Setelah di drag dia akan berubah mejadi apa
                childWhenDragging: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
                // Bentuk Lingkarang ketika di drag
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.5),
                    shape:
                        const StadiumBorder(), // Widget ini berfungsi untuk membuat suduk segita menjadi lingkaran
                    // bayangan
                    elevation: 3,
                  ),
                ),
              ),
              DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccept = true;
                  targetColor = value;
                },
                builder: (context, candidateData, rejectedData) {
                  return (isAccept)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: const StadiumBorder(),
                            elevation: 3,
                          ),
                        );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
