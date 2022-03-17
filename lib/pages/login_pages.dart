import 'package:flutter/material.dart';
import 'package:myapp/pages/main_pages.dart';

class LoginPages extends StatelessWidget {
  const LoginPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("LOGIN PAGES"),
          ),
          ElevatedButton(
              onPressed: () {
                // Push Replacement ada Navigasi Route yang Tidak Mengemabilkan Pages Sebelumnya
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainPages(),
                  ),
                );
              },
              child: const Text("LOGIN"))
        ],
      ),
    );
  }
}
