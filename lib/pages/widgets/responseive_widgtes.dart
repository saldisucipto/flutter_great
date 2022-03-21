import 'package:flutter/material.dart';

class ResponisveWidgets extends StatefulWidget {
  const ResponisveWidgets({Key? key}) : super(key: key);

  @override
  State<ResponisveWidgets> createState() => _ResponisveWidgetsState();
}

class _ResponisveWidgetsState extends State<ResponisveWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: Container(
        // 30% lebar dari screen
        width: MediaQuery.of(context).size.width / 3,
        // 50% Lebar dari screen
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.blue,
      ),
    );
  }
}
