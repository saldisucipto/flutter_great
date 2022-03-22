import 'package:flutter/material.dart';
import 'package:myapp/pages/main_pages.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Membuat variable yang menyimpan diameter linkaran
    double getUkuranKecilDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width *
        2 /
        3; // akan memberikan ukuran 2/3 dari layaranya
    double getUkuranBesarDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width *
        7 /
        8; // akan memberikan ukuran 7/8 dari layaranya
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        //  Update Tampilan Login
        children: [
          // Lingkaran Kecil
          Positioned(
            // Widget Position untuk mengatur penempatan widets
            right: -getUkuranKecilDiameter(context) /
                3, // membuat penempatan shape ada di pojok kanan dan memotong (minus)
            top: -getUkuranKecilDiameter(context) /
                3, // membuat penempatan shape ada di pojok atas dan memotong (minus)
            child: Container(
              // membuat shape linkaran
              width: getUkuranKecilDiameter(context),
              height: getUkuranKecilDiameter(context),
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // membuat shape lingkaranag
                gradient: LinearGradient(
                  // membuat gradient untuk gradasi
                  colors: [Colors.cyan, Colors.blueAccent],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
          ),
          // Linkar Besar
          Positioned(
            // Widget Position untuk mengatur penempatan widets
            left: -getUkuranKecilDiameter(context) /
                4, // membuat penempatan shape ada di pojok kanan dan memotong (minus)
            top: -getUkuranKecilDiameter(context) /
                4, // membuat penempatan shape ada di pojok atas dan memotong (minus)
            child: Container(
              // membuat shape linkaran
              width: getUkuranBesarDiameter(context),
              height: getUkuranBesarDiameter(context),
              child: const Center(
                child: Text(
                  "LoginNYA",
                  style: TextStyle(
                      fontFamily: "Pacifico",
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.circle, // membuat shape lingkaranag
                gradient: LinearGradient(
                  // membuat gradient untuk gradasi
                  colors: [Colors.cyan, Colors.blueAccent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          // Lingkarang Paling Bawah
          Positioned(
            // Widget Position untuk mengatur penempatan widets
            right: -getUkuranKecilDiameter(context) /
                2, // membuat penempatan shape ada di pojok kanan dan memotong (minus)
            bottom: -getUkuranKecilDiameter(context) /
                1.5, // membuat penempatan shape ada di pojok atas dan memotong (minus)
            child: Opacity(
              opacity: 0.5,
              child: Container(
                // membuat shape linkaran
                width: getUkuranBesarDiameter(context),
                height: getUkuranBesarDiameter(context),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle, // membuat shape lingkaranag
                  gradient: LinearGradient(
                    // membuat gradient untuk gradasi
                    colors: [Colors.cyan, Colors.blueAccent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
          ),
          // Mmebuat Konten
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Colors.blue,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                          ),
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.blue,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.blueAccent),
                          ),
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 20, 20),
                    child: const Text(
                      "Lupa Password ?",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPages(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: const LinearGradient(
                                colors: [Colors.blue, Colors.cyan],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
