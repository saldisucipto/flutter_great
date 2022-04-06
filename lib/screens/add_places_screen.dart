import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/providers/great_places.dart';
import 'package:myapp/widgets/places_input.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart' as path1;

import '../widgets/image_input.dart';

class AddPlaceScreen extends StatefulWidget {
  static const routeName = '/add-place';
  const AddPlaceScreen({Key? key}) : super(key: key);

  @override
  State<AddPlaceScreen> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends State<AddPlaceScreen> {
  // textField Controller
  final _titleController = TextEditingController();
  // piceked Image
  File? _pickedImage;

  // select image
  void _selectImage(File pickedImage) async {
    _pickedImage = pickedImage;
  }

  // save place
  void _savePlace() {
    if (_titleController.text.isEmpty || _pickedImage == null) {
      return;
    }
    Provider.of<GreatPlaces>(context, listen: false).addPlace(
      _titleController.text,
      _pickedImage!,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Place"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      hintText: "Title",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    controller: _titleController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ImageInput(
                    onSelectImage: _selectImage,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const LocationInput(),
                ]),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: _savePlace,
            icon: const Icon(Icons.add),
            label: const Text("Add Places"),
          ),
        ],
      ),
    );
  }
}
