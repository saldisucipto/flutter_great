import 'package:flutter/material.dart';
import 'package:myapp/pages/widgets/class/application_color.dart';
import 'package:provider/provider.dart';

class ProPider extends StatelessWidget {
  const ProPider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Text(
                "Provider State",
                style: TextStyle(color: applicationColor.color),
              ),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => AnimatedContainer(
                  margin: const EdgeInsets.all(5),
                  width: 100,
                  height: 100,
                  color: applicationColor.color,
                  duration: const Duration(
                    milliseconds: 500,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Consumer<ApplicationColor>(
                        builder: (context, applicationColor, _) => Text(
                              "AB",
                              style: TextStyle(color: applicationColor.color),
                            )),
                  ),
                  Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Switch(
                      value: applicationColor.isBlueLight,
                      onChanged: (newValue) {
                        applicationColor.isLightBlue = newValue;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Text(
                        "CY",
                        style: TextStyle(color: applicationColor.color),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
        ),
      ),
    );
  }
}
