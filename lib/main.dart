import 'package:flutter/material.dart';
import 'package:myapp/pages/login_pages.dart';

void main() {
  // Membuat orientasi terkunci hanya potrait
  runApp(const MaterialApp(
    home: LoginPages(),
    debugShowCheckedModeBanner: false,
  ));
}
