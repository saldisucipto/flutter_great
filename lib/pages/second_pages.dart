import 'package:flutter/material.dart';

class SecondPages extends StatelessWidget {
  const SecondPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("THIS IS SECOND PAGES"),
          ),
          ElevatedButton(
              onPressed: () {
                // Pop menutup screen saat ini
                Navigator.pop(context);
              },
              child: const Text("Back Main Pages"))
        ],
      ),
    );
  }
}
