import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This Is A Card Widgtes"),
      ),
      body: const Center(
        child: Card(
          // Penggunaan Card Widgtes
          elevation: 5,
          color: Colors.blueAccent,
          child: SizedBox(
            width: 300,
            height: 200,
            child: Center(
              child: Text("Card Widgtes"),
            ),
          ),
        ),
      ),
    );
  }
}
