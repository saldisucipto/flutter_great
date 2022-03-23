import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(
          flexibleSpace: Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.all(20),
              child: const Text("AppBar with Custom Height"),
            ),
          ),
        ),
        preferredSize: const Size.fromHeight(200),
      ),
    );
  }
}
