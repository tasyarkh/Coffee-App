import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styling.bg,
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black12,
        ),
        centerTitle: true,
        title: Text(
          "Your Profile",
          style: TextStyle(
            fontFamily: "Amiko",
          ),
        ),
      ),
    );
  }
}
