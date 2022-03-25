import 'package:flutter/material.dart';

class GradasiOpasiti extends StatelessWidget {
  const GradasiOpasiti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gradasi Opacity"),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (rectangle) {
            return const LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)
                .createShader(
              Rect.fromLTRB(0, 0, rectangle.width, rectangle.height),
            );
          },
          blendMode: BlendMode.dstIn,
          child: const Image(
            width: 300,
            image: NetworkImage(
                "https://images.unsplash.com/photo-1648116552330-2c88a7d1ee0c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
          ),
        ),
      ),
    );
  }
}
