import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class favItem extends StatelessWidget {
  const favItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Styling.primaryColor,
        ),
      ),
    );
  }
}
