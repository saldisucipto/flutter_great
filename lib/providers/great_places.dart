import 'package:flutter/foundation.dart';
import 'package:myapp/models/places.dart';

class GreatPlaces extends ChangeNotifier {
  // Make State Management
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }
}
