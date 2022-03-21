import 'package:flutter/material.dart';
import 'package:myapp/pages/second_pages.dart';
import 'package:myapp/pages/widgets/card_widgets.dart';

class MainPages extends StatelessWidget {
  const MainPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("The Main Pages"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.anchor,
              color: Colors.black54,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.black54,
            ),
          )
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.cyanAccent],
              begin: FractionalOffset.bottomRight,
              end: FractionalOffset.topLeft,
            ),
            image: DecorationImage(
              image: AssetImage("assets/patern/pattern.png"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
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
            child: const Text("Go To Seconda Pages"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const CardWidgets(),
                ),
              );
            },
            child: const Text("Card Widgets"),
          ),
        ],
      ),
    );
  }
}
