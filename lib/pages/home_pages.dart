import 'package:flutter/material.dart';
import 'package:greatapp/misc/color.dart';
import 'package:greatapp/widgets/app_large_text.dart';
import 'package:greatapp/widgets/app_text.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  _HomePagesState createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
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
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
