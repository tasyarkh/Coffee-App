import 'package:coffeeku/pages/welcome_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Styling.bg,
        statusBarColor: Color(0xff0c0f14),
      ))
    };

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: WelScreen(),
    );
  }
}
