import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoapp/services/notification_services.dart';
import 'package:todoapp/services/theme_services.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  var notifyHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const Center(
        child: Text("Our Home Pages"),
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          TemaServis().switchTheme();
          notifyHelper.diplayNotifications(
            title: "Theme Changed",
            body: Get.isDarkMode
                ? "Dark Theme Activated"
                : "Light Theme Activated",
          );
          notifyHelper.scheduledNotification();
        },
        child: const Icon(
          Icons.nightlight_rounded,
          size: 20,
        ),
      ),
      actions: const [
        Icon(Icons.person, size: 20),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
