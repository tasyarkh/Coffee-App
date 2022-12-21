import 'package:coffeeku/pages/login_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelScreen extends StatelessWidget {
  const WelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          padding: const EdgeInsets.only(top: 100, bottom: 40),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Coffeku",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Amiko",
                    fontSize: 50,
                    fontWeight: Styling.bold,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Find Your Taste",
                      style: TextStyle(
                        fontFamily: "Amiko",
                        color: Styling.secondaryColor,
                      ),
                    ),
                    const SizedBox(height: 95),
                    Container(
                      width: 250,
                      height: 250,
                      padding: const EdgeInsets.symmetric(
                          vertical: 25, horizontal: 25),
                      decoration: const BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                              image: AssetImage("assets/img/logo.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(height: 160),
                    InkWell(
                      splashColor: Styling.bg,
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            ));
                      },
                      child: Ink(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 100),
                          decoration: BoxDecoration(
                              color: Styling.primaryColor,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xffE5890A).withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                    offset: const Offset(0, 3))
                              ]),
                          child: const Text(
                            "Get Started",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Amiko",
                              fontSize: 15,
                              fontWeight: Styling.semibold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
