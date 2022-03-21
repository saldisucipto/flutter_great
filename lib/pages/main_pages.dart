import 'package:flutter/material.dart';
import 'package:myapp/pages/second_pages.dart';
import 'package:myapp/pages/widgets/card_widgets.dart';
import 'package:myapp/pages/widgets/nav_route.dart';
import 'package:myapp/pages/widgets/textfiels_widgtes.dart';

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
            // image: DecorationImage(
            //   image: AssetImage("assets/patern/pattern.png"),
            //   fit: BoxFit.contain,
            //   repeat: ImageRepeat.repeat,
            // ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Center(
            child: Text("THIS IS MAIN PAGES"),
          ),
          Navigasi(
            classTujuan: SecondPages(),
            namaNavigasi: "Second Pages",
          ),
          Navigasi(
            classTujuan: CardWidgets(),
            namaNavigasi: "Card Widgtes",
          ),
          Navigasi(
            classTujuan: FormWidgets(),
            namaNavigasi: "Form Widgtes",
          ),
        ],
      ),
    );
  }
}
