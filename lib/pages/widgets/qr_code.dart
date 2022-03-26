import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  Widget? scanner;

  @override
  Widget build(BuildContext context) {
    String text = "Hasil QR Scan";
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: [
              QrImage(
                version: 6,
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.black,
                errorCorrectionLevel: QrErrorCorrectLevel.M,
                padding: const EdgeInsets.all(20),
                size: 300,
                data: "https://saldisucipto.github.io/",
              ),
              Text(text),
              ElevatedButton(
                onPressed: () async {
                  setState(() {});
                },
                child: const Text("Scan Barcode"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
