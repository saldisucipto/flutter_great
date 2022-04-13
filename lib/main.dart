import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todoapp/services/theme_services.dart';
import 'package:todoapp/ui/home_pages.dart';
import 'package:todoapp/ui/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App",
      // themeMode
      theme: Tema.light,
      darkTheme: Tema.dark,
      themeMode: TemaServis().theme,
      home: const HomePages(),
    );
  }
}
