import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class MenuProfl extends StatelessWidget {
  const MenuProfl({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String text;
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
              const Icon(
                Icons.person,
                color: Styling.primaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Text(
                text,
                style: const TextStyle(
                    color: Styling.primaryColor,
                    fontFamily: "Amiko",
                    fontSize: 15),
              )),
              const Icon(
                Icons.arrow_forward_ios,
                color: Styling.secondaryColor,
              )
            ],
          )),
    );
  }
}
