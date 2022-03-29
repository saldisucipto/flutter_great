import 'package:flutter/material.dart';

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
                  const ImageInput(),
                ]),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("Add Places"),
          ),
        ],
      ),
    );
  }
}
