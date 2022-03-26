import 'package:flutter/cupertino.dart';

class Cart with ChangeNotifier {
  int _quantity = 0;

  // getter
  int get qunatitiy => _quantity;
  // setter
  set qunatitiy(int value) {
    _quantity = value;
    notifyListeners();
  }
}
