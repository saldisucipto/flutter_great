import 'package:flutter/material.dart';
import 'package:myapp/providers/great_places.dart';
import 'package:myapp/screens/add_places_screen.dart';
import 'package:provider/provider.dart';

class PlacListSceen extends StatelessWidget {
  const PlacListSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Places"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AddPlaceScreen.routeName);
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: FutureBuilder(
        future: Provider.of<GreatPlaces>(context, listen: false)
            .fetchAndSetPlaces(),
        builder: (ctx, snapshot) =>
            snapshot.connectionState == ConnectionState.waiting
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Consumer<GreatPlaces>(
                    child: const Center(
                      child: Text('Got no Places Yet, start adding some'),
                    ),
                    builder: (ctx, greatPlaces, ch) => greatPlaces.items.isEmpty
                        ? ch!
                        : ListView.builder(
                            itemCount: greatPlaces.items.length,
                            itemBuilder: (ctx, i) => ListTile(
                              leading: CircleAvatar(
                                  backgroundImage:
                                      FileImage(greatPlaces.items[i].image)),
                              title: Text(greatPlaces.items[i].title),
                              onTap: () {},
                            ),
                          ),
                  ),
      ),
    );
  }
}
