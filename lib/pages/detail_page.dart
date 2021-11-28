import 'package:flutter/material.dart';
import 'package:greatapp/misc/color.dart';
import 'package:greatapp/widgets/app_button.dart';
import 'package:greatapp/widgets/app_large_text.dart';
import 'package:greatapp/widgets/app_text.dart';

class DetailPages extends StatefulWidget {
  const DetailPages({Key? key}) : super(key: key);

  @override
  _DetailPagesState createState() => _DetailPagesState();
}

class _DetailPagesState extends State<DetailPages> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 500,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/mountains01.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              left: 20,
              top: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      print("Button CLicked");
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    iconSize: 30,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                width: MediaQuery.of(context).size.width,
                height: 600,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Bromo",
                          size: 25,
                          color: Colors.black87,
                        ),
                        AppLargeText(
                          text: "1.500K/Pack",
                          size: 20,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppsColor.mainColor,
                        ),
                        AppText(
                          text: "INDONESIA, East Java",
                          color: AppsColor.mainColor,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) => Icon(
                              Icons.star,
                              size: 20,
                              color: Colors.yellow,
                            ),
                          ),
                        ),
                        AppText(
                          text: "(5.0)",
                          color: AppsColor.textColor2,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black.withOpacity(0.8),
                      size: 20,
                    ),
                    AppText(
                      text: "Number Of People Of Your Group",
                      color: AppsColor.textColor2,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                              // print("button clicked");
                              // print(selectedIndex);
                              // print(index);
                            });
                          },
                          child: AppButton(
                            text: (index + 1).toString(),
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black38,
                            colorBackground: selectedIndex == index
                                ? AppsColor.mainColor
                                : Colors.black12,
                            size: 50,
                            borderColor: AppsColor.buttonBackground,
                            isIcon: false,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
