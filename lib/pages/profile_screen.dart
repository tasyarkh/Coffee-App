import 'package:coffeeku/components/profile_menu.dart';
import 'package:coffeeku/components/profile_picture.dart';
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
        title: const Text(
          "Your Profile",
          style: TextStyle(
            fontFamily: "Amiko",
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            PictProfile(),
            const SizedBox(
              height: 20,
            ),
            MenuProfl(
              press: () {},
              text: "My Account",
            ),
            MenuProfl(
              press: () {},
              text: "Notification",
            ),
            MenuProfl(
              press: () {},
              text: "History Order",
            ),
            MenuProfl(
              press: () {},
              text: "Logout",
            )
          ],
        ),
      ),
    );
  }
}
