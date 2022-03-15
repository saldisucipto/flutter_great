import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Kita menggunkan null safety dan menggunkan const
    var ukuran = MediaQuery.of(context).size;
    return MaterialApp(
      // Menghilangkan banner debug
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // ini adalah widget tampilan yang akan digunakan
        appBar: AppBar(
          title: const Text("Aplikasi Pertamaas"),
        ),
        body: Center(
          child: Column(
            // Column akan membuat sebuah penempatan list secara menurun atau horizontal
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // Untuk Mengatur Content pada Kolom dimulai dengan start
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                width: 100,
                height: 50,
                child: const Center(
                  child: Text(
                    "Box 1",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                width: 100,
                height: 50,
                child: const Center(
                  child: Text(
                    "Box 2",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blueAccent,
                ),
                width: 100,
                height: 50,
                child: const Center(
                  child: Text(
                    "Box 3",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.blueAccent,
                  ),
                  height: 50,
                  width: ukuran.width,
                  child: Row(
                    // Mangatur Space Pada Element
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        width: 100,
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Box 4",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        width: 100,
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Box 5",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blueAccent,
                        ),
                        width: 100,
                        height: 50,
                        child: const Center(
                          child: Text(
                            "Box 6",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
