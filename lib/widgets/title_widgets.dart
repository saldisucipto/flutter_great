import 'package:flutter/material.dart';

class TitleTextContainer extends StatelessWidget {
  final String title;
  const TitleTextContainer({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
      ),
    );
  }
}
