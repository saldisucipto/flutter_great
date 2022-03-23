import 'package:flutter/material.dart';

class ButtonKetupat extends StatelessWidget {
  const ButtonKetupat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Button"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ColorFullButton(
              mainColor: Colors.pink,
              seconColor: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}

class ColorFullButton extends StatefulWidget {
  Color mainColor, seconColor;
  ColorFullButton({Key? key, required this.mainColor, required this.seconColor})
      : super(key: key);

  @override
  State<ColorFullButton> createState() =>
      _ColorFullButtonState(mainColor, seconColor);
}

class _ColorFullButtonState extends State<ColorFullButton> {
  Color mainColor, seconColor;

  _ColorFullButtonState(this.mainColor, this.seconColor);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: 50,
            height: 50,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              color: mainColor,
            ))
      ],
    );
  }
}
