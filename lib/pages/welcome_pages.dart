import 'package:flutter/material.dart';
import 'package:greatapp/misc/color.dart';
import 'package:greatapp/widgets/app_large_text.dart';
import 'package:greatapp/widgets/app_text.dart';
import 'package:greatapp/widgets/responsive_button.dart';

class WelcomePages extends StatefulWidget {
  const WelcomePages({Key? key}) : super(key: key);

  @override
  _WelcomePagesState createState() => _WelcomePagesState();
}

class _WelcomePagesState extends State<WelcomePages> {
  List images = [
    "humans-vector-01.png",
    "humans-vector-02.png",
    "humans-vector-03.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Page View Untuk Mmebuat COurousel Pages
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/" + images[index]),
                  fit: BoxFit.cover,
                ),
                // Membuat Gambar Menutupi Semua Area
              ),
              // Text
              child: Container(
                margin: EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: "HEALING"),
                        AppText(
                          text: "Ke Gunung",
                          size: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                "Bebaskan Semua Beban Dan Pikiran di Alam, Jiwamu Butuh Tanang Hatimu Ingin Damai..",
                            color: AppsColor.textColor2,
                            size: 14,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ResposiveButton()
                      ],
                    ),

                    /// Widget Navigasi SLider
                    Column(
                      children: List.generate(3, (indexDots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 7),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index == indexDots
                                ? AppsColor.mainColor
                                : AppsColor.mainColor.withOpacity(0.5),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
