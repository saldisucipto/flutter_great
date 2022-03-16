import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          // Network Images
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 300,
            height: 300,
            color: Colors.grey,
            child: const Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1647185255958-701651f45c4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
          ),
          // Assets Images / Local Images
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 300,
            height: 300,
            color: Colors.grey,
            child: const Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/images1.jpg")),
          ),
        ]),
      ),
    );
  }
}
