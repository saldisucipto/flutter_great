import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatelessWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: QrImage(
          version: 6,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.black,
          errorCorrectionLevel: QrErrorCorrectLevel.M,
          padding: EdgeInsets.all(20),
          size: 300,
          data: "https://saldisucipto.github.io/",
        ),
      )),
    );
  }
}
