import 'package:flutter/material.dart';
import 'package:myapp/providers/great_places.dart';
import 'package:myapp/screens/add_places_screen.dart';
import 'package:myapp/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // Membuat orientasi terkunci hanya potrait
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        // title apps
        title: "Great Apps",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber),
        ),
        home: const PlacListSceen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => const AddPlaceScreen(),
        },
      ),
    );
  }
}
