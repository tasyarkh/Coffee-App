import 'package:coffeeku/components/favorite_item.dart';
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
            FavItem(
                text: "Macchiatto Whipcream",
                press: () {},
                images: "assets/img/macwhip.jpg"),
            FavItem(
                text: "Original Macchiato",
                press: () {},
                images: "assets/img/mavOri.jpg"),
            FavItem(
                text: "Machiatto Latte",
                press: () {},
                images: "assets/img/macLat.jpg"),
            FavItem(
                text: "Capuccino",
                press: () {},
                images: "assets/img/cappucino.jpg"),
            FavItem(text: "Brew", press: () {}, images: "assets/img/brew.jpg"),
            FavItem(
                text: "Americano",
                press: () {},
                images: "assets/img/americano.jpg"),
          ],
        ),
      ),
    );
  }
}
