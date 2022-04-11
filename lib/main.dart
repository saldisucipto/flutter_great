import 'package:flutter/material.dart';
import 'package:todoapp/ui/home_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      theme: ThemeData(
          // disini untuk mengatur tampilan pada aplikasi kita atau mengatur tema pada aplikasi kita
          ),
      home: const HomePages(),
    );
  }
}
