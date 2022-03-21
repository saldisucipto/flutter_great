import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.cyan],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                elevation: 5,
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.7,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                            image: AssetImage("assets/patern/pattern.png"),
                            fit: BoxFit.cover,
                            repeat: ImageRepeat.noRepeat,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/images1.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          20,
                          50 + MediaQuery.of(context).size.height * 0.35,
                          20,
                          20),
                      child: Column(
                        children: [
                          Text(
                            "Beautiful Sunset At Paddy Field",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.grey[900],
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Post On  ",
                                  style: TextStyle(
                                      color: Colors.grey[900], fontSize: 12),
                                ),
                                Text(
                                  "March 23, 2022",
                                  style: TextStyle(
                                      color: Colors.blue[600], fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: const [
                              Spacer(
                                flex: 10,
                              ),
                              // icon
                              Icon(
                                Icons.thumb_up_alt,
                                size: 18,
                                color: Colors.blueGrey,
                              ),
                              Spacer(
                                flex: 1,
                              ),
                              // Text
                              Text(
                                "99",
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                              Spacer(
                                flex: 5,
                              ),
                              // icon
                              Icon(
                                Icons.comment,
                                size: 18,
                                color: Colors.blueGrey,
                              ),

                              Spacer(
                                flex: 1,
                              ),
                              // Text
                              Text(
                                "897",
                                style: TextStyle(color: Colors.blueGrey),
                              ),

                              Spacer(
                                flex: 10,
                              ),
                              // Text
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
