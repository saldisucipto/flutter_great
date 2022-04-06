import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:myapp/models/places.dart';

class GreatPlaces extends ChangeNotifier {
  // Make State Management
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  void addPlace(
    String title,
    File pickedImage,
  ) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      image: pickedImage,
      title: title,
      location: null,
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
