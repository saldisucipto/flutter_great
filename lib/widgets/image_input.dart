import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspaths;

class ImageInput extends StatefulWidget {
  final Function onSelectImage;
  const ImageInput({
    Key? key,
    required this.onSelectImage,
  }) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  File? _storeImage;

  Future pickImage() async {
    final image = await ImagePicker().pickImage(
      source: ImageSource.camera,
      maxWidth: 600,
    );
    if (image == null) {
      return;
    }
    // saved image permantely
    final imagePermanent = await savedImagePermanent(image.path);
    // final imageTemporary = File(image.path);
    setState(() {
      _storeImage = imagePermanent;
    });
    // select constructoe
    widget.onSelectImage(imagePermanent);
    // print(imagePermanent);
  }

  // Saved Image On Local Device
  Future<File> savedImagePermanent(String imagePath) async {
    final directory = await syspaths.getApplicationDocumentsDirectory();
    final name = path.basename(imagePath);
    final image = File('${directory.path}/$name');
    return File(imagePath).copy(image.path);
  }

  Future pickImageGallery() async {
    final image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxWidth: 600);
    if (image == null) {
      return;
    }
    // final imageTemporary = File(image.path);
    final imagePermanent = await savedImagePermanent(image.path);

    setState(() {
      _storeImage = imagePermanent;
    });
    widget.onSelectImage(imagePermanent);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: _storeImage != null
              ? Image.file(
                  _storeImage!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                )
              : const Text(
                  "No Images Taken",
                  textAlign: TextAlign.center,
                ),
          alignment: Alignment.center,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: [
              TextButton.icon(
                onPressed: pickImage,
                icon: const Icon(Icons.camera),
                label: const Text("Take Picture"),
              ),
              TextButton.icon(
                onPressed: pickImageGallery,
                icon: const Icon(Icons.picture_in_picture_rounded),
                label: const Text("From Gallery"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
