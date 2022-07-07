import 'package:flutter/material.dart';

class ContainerListWidgets extends StatelessWidget {
  const ContainerListWidgets({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[100],
        ),
        padding: const EdgeInsets.all(5),
        height: 280,
        width: 350,
        child: child);
  }
}
