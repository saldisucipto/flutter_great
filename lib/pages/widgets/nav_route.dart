import 'package:flutter/material.dart';

class Navigasi extends StatelessWidget {
  final Widget classTujuan;
  final String namaNavigasi;

  const Navigasi({
    Key? key,
    required this.classTujuan,
    required this.namaNavigasi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Push Navigasi Route yang Tidak Masih Memungkinkan Kmebali ke Pages Sebelumnya
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => classTujuan,
          ),
        );
      },
      child: Text(
        namaNavigasi,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 12),
      ),
    );
  }
}
