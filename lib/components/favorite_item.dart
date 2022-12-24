import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class FavItem extends StatelessWidget {
  const FavItem({
    Key? key,
    required this.text,
    required this.press,
    required this.images,
  }) : super(key: key);

  final String text, images;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: FlatButton(
          padding: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          color: Styling.secondaryColor.withOpacity(0.3),
          onPressed: press,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                    size: Size.fromRadius(40),
                    child: Image.asset(
                      images,
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Amiko",
                    fontSize: 18,
                    fontWeight: Styling.semibold),
              )),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(
                  Icons.favorite,
                  color: Styling.primaryColor,
                ),
              )
            ],
          )),
    );
  }
}
