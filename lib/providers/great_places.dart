import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:myapp/helpers/db_helpers.dart';
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
    DBhelp.insert('user_places', {
      'id': newPlace.id,
      'title': newPlace.title,
      'image': newPlace.image.path,
    });
  }

  Future<void> fetchAndSetPlaces() async {
    final dataList = await DBhelp.getData('user_places');
    _items = dataList
        .map(
          (item) => Place(
            id: item['id'],
            title: item['title'],
            location: null,
            image: File(item['image']),
          ),
        )
        .toList();
    notifyListeners();
  }
}
