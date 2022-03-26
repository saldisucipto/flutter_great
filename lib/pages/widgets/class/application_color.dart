import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ApplicationColor with ChangeNotifier {
// Mengimplementasikan Interface ChangeNotifier
// field
  bool _isLightBlue = true;

  // geter
  bool get isBlueLight => _isLightBlue;
  // setter
  set isLightBlue(bool value) {
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.cyan;
}
