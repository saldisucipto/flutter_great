import 'package:flutter/material.dart';

class LocationInput extends StatefulWidget {
  const LocationInput({Key? key}) : super(key: key);

  @override
  State<LocationInput> createState() => _LocationInputState();
}

class _LocationInputState extends State<LocationInput> {
  String? _previewImageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 170,
          margin: const EdgeInsets.only(bottom: 10),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              border: Border.all(
                width: 0.5,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: _previewImageUrl == null
              ? const Text(
                  "No Location Choose",
                  textAlign: TextAlign.center,
                )
              : Image.network(
                  _previewImageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {},
              child: Column(
                children: const [
                  Icon(
                    Icons.location_on,
                  ),
                  Text("Current Location")
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Column(
                children: const [
                  Icon(
                    Icons.map,
                  ),
                  Text("Choose Location")
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
