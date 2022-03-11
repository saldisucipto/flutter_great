import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Kita menggunkan null safety dan menggunkan const
    return MaterialApp(
      // Menghilangkan banner debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ini adalah widget tampilan yang akan digunakan
        appBar: AppBar(
          title: const Text("Aplikasi Pertama"),
        ),
        body: Center(
          // ini widget untuk menempatkan semuanya ditengah
          // body adalah parameter dari scaffold widget untuk memberikan konten pada body aplikasi kita
          child: Container(
            color: Colors.blue,
            width: 150,
            height: 50,
            child: const Text(
              "This is A Hello World Application lorem ipsum dolor sit ammet",
              // Mengatur batas maksimal text
              maxLines: 2,
              // ,mepunyai properties overflow juga
              overflow: TextOverflow.ellipsis,
              softWrap: false,
              // mengatur align text
              textAlign: TextAlign.center,
              // Styling Text
              style: TextStyle(
                // merubah warna text
                color: Colors.white,
                // Merubah ketebalan text
                fontWeight: FontWeight.bold,
                // Merubah ukuran Text
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
