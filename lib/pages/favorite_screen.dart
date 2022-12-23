import 'package:coffeeku/components/fav.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  const Fav({Key? key}) : super(key: key);

  @override
  State<Fav> createState() => _FavState();
}

class _FavState extends State<Fav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bg,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black12,
        ),
        centerTitle: true,
        title: const Text(
          "Your Favorite Coffee",
          style: TextStyle(
            fontFamily: "Amiko",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView(
          children: [
            favItem(),
            favItem(),
            favItem(),
            favItem(),
            favItem(),
            favItem(),
          ],
        ),
      ),
    );
  }
}
