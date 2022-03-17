import 'package:flutter/material.dart';
import 'package:myapp/pages/second_pages.dart';

class MainPages extends StatelessWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("THIS IS MAIN PAGES"),
          ),
          ElevatedButton(
              onPressed: () {
                // Push Navigasi Route yang Tidak Masih Memungkinkan Kmebali ke Pages Sebelumnya
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPages(),
                  ),
                );
              },
              child: const Text("Go To Seconda Pages"))
        ],
      ),
    );
  }
}
