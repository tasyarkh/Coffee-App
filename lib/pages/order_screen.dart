
import 'dart:ui';

import 'package:coffeeku/pages/home_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  static var heightScreen;
  static var widthScreen;
  const Orders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    heightScreen = MediaQuery.of(context).size.height;
    widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Styling.bg,
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage("assets/img/macwhip.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                      sigmaX: 10,
                                      sigmaY: 10,
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      width: double.infinity,
                                      height: heightScreen * 0.2 - 20,
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff311d18).withOpacity(0.6),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                  child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Text(
                                                              "Cappucino",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontFamily:
                                                                      "Amiko",
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      Styling
                                                                          .semibold),
                                                            ),
                                                            const SizedBox(
                                                              height: 3,
                                                            ),
                                                            Text(
                                                              "With Fresh Milk",
                                                              style: TextStyle(
                                                                  fontSize: 10,
                                                                  color: Colors
                                                                      .white
                                                                      .withOpacity(
                                                                          0.6)),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 3,
                                                      ),
                                                      Row(
                                                        children: const [
                                                          Icon(
                                                            Icons.star,
                                                            color: Styling
                                                                .primaryColor,
                                                          ),
                                                          Text(
                                                            "4.8",
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontFamily:
                                                                  "Amiko",
                                                            ),
                                                          )
                                                        ],
                                                      )
                                                    ],
                                                  )
                                                ],
                                              )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Styling.bg.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) => Home()));
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios_new,
                                        size: 20,
                                        color: Styling.secondaryColor,
                                      )),
                                ),
                                Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Styling.bg.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.favorite,
                                        size: 20,
                                        color: Styling.secondaryColor,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Description",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Column(
                          children: [
                            Text(
                                "Macchiato coffee drink with whipped cream that adds a creamy feel")
                          ],
                        ),
                        const Text(
                          "Size",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RawMaterialButton(
                              fillColor: Styling.primaryColor.withOpacity(0.2),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side:
                                      BorderSide(color: Styling.primaryColor)),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: const Text(
                                "S",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Amiko",
                                    fontSize: 16,
                                    fontWeight: Styling.semibold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            RawMaterialButton(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              fillColor: Colors.white.withOpacity(0.2),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: const Text(
                                "M",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Amiko",
                                    fontSize: 16,
                                    fontWeight: Styling.semibold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            RawMaterialButton(
                              fillColor: Colors.white.withOpacity(0.2),
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                              },
                              child: const Text(
                                "L",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Amiko",
                                    fontSize: 16,
                                    fontWeight: Styling.semibold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      color: Colors.white, fontFamily: "Amiko"),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Rp",
                                      style: TextStyle(
                                          color: Styling.primaryColor,
                                          fontFamily: "Amiko",
                                          fontWeight: Styling.semibold),
                                    ),
                                    Text(
                                      "24K",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Amiko",
                                          fontWeight: Styling.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            MaterialButton(
                              onPressed: () {},
                              height: 55,
                              minWidth: 200,
                              color: Styling.primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "Buy",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ))
                ],
              ))),
    );
  }
}
