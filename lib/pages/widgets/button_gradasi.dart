import 'package:flutter/material.dart';

class ButtonGradasi extends StatefulWidget {
  const ButtonGradasi({Key? key}) : super(key: key);

  @override
  State<ButtonGradasi> createState() => _ButtonGradasiState();
}

class _ButtonGradasiState extends State<ButtonGradasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Button Biasa"),
            ),
            Material(
              // agar bisa menggunkan elevation kita harus menggunkan widget material
              borderRadius: BorderRadius.circular(20),
              // memberikan bayangan
              elevation: 3,
              child: Container(
                width: 150,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.blueAccent],
                  ),
                ),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20),
                    // Meubah splashColor Saat ditekan
                    splashColor: Colors.amber,
                    onTap: () {},
                    child: const Center(
                      child: Text(
                        "MY BUTTON",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
