import 'package:flutter/material.dart';

class FormWidgets extends StatefulWidget {
  const FormWidgets({Key? key}) : super(key: key);

  @override
  State<FormWidgets> createState() => _FormWidgetsState();
}

class _FormWidgetsState extends State<FormWidgets> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextField"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              // untuk memberikan style pada inputan
              decoration: InputDecoration(
                // membuat border radius
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                // Memberikan Icon Disambing Filed
                icon: const Icon(Icons.usb_off),
                // memberikan icon pada colom
                prefixIcon: const Icon(Icons.usb),
                // memberikan label pada textfield
                labelText: "USB Dicabut",
                // Memberikan Placeholder
                hintText: "Usb Akan DIcabut",
                // Mmebrikan warna pada saat di ipnut
                fillColor: Colors.cyanAccent[50],
                filled: true,
              ),
              controller: controller,
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(controller.text),
          ),
        ],
      ),
    );
  }
}
