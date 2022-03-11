import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Kita menggunkan null safety dan menggunkan const
    return const MaterialApp(
      // Menghilangkan banner debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ini adalah widget tampilan yang akan digunakan
        body: Center(
          // ini widget untuk menempatkan semuanya ditengah
          // body adalah parameter dari scaffold widget untuk memberikan konten pada body aplikasi kita
          child: Text("This is A Hello World Application"),
        ),
      ),
    );
  }
}
