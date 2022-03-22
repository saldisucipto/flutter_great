import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/login_pages.dart';

void main() {
  // Membuat orientasi terkunci hanya potrait
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MaterialApp(
      home: LoginPages(),
      debugShowCheckedModeBanner: false,
    ));
  });
}
