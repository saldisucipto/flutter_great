import 'package:flutter/material.dart';
import 'package:greatapp/misc/color.dart';
import 'package:greatapp/widgets/app_text.dart';

class AppButton extends StatelessWidget {
  // field
  final Color color;
  String? text;
  IconData? icon;
  final Color colorBackground;
  double size;
  final Color borderColor;
  bool? isIcon;

  AppButton({
    Key? key,
    required this.color,
    this.text,
    this.icon,
    required this.colorBackground,
    required this.size,
    required this.borderColor,
    this.isIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: size,
      height: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorBackground,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(15),
        color: colorBackground,
      ),
      child: isIcon == false
          ? Center(
              child: AppText(
                text: text!,
                color: color,
              ),
            )
          : Center(
              child: Icon(
                icon,
                color: color,
              ),
            ),
    );
  }
}
