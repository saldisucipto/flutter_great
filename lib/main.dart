import 'package:flutter/material.dart';
import 'package:greatapp/pages/detail_page.dart';
import 'package:greatapp/pages/navpages/main_pages.dart';
import 'package:greatapp/pages/welcome_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPages(),
    );
  }
}
