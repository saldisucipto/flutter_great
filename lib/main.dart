import 'package:flutter/material.dart';
import 'package:flutudemy/pages/category_pages.dart';
import 'package:flutudemy/pages/home_pages.dart';

void main(List<String> args) {
  // main function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Makanan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const KategoriScreen(),
    );
  }
}
