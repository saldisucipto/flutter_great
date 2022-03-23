import 'package:flutter/material.dart';

class HeroAnimations extends StatelessWidget {
  const HeroAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// ClipRRect adalah Widgets yang berfungsi untuk membuat widgets yang dibungkus menjadi mempunya radius atau border lingkaran
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero Animations"),
      ),
      body: Hero(
        tag: 'pp',
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SecondHero(),
              ),
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SecondHero extends StatelessWidget {
  const SecondHero({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'pp',
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
              child: const SizedBox(
                width: 400,
                height: 400,
                child: Image(
                  image: AssetImage("assets/images/profile.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
