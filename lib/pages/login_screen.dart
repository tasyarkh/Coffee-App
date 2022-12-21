import 'package:coffeeku/components/bottomNav.dart';
import 'package:coffeeku/pages/home_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Image(image: AssetImage("assets/img/bg.png")),
          const SizedBox(height: 50),
          const TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: "Email",
              prefixIcon: Icon(
                Icons.email,
                color: Styling.primaryColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Styling.primaryColor, width: 2),
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const TextField(
            autofocus: false,
            decoration: InputDecoration(
              hintText: "Password",
              prefixIcon: Icon(
                Icons.lock,
                color: Styling.primaryColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Styling.primaryColor, width: 2),
              ),
            ),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Styling.primaryColor,
              ),
              textAlign: TextAlign.right,
            ),
          ),
          const SizedBox(height: 80),
          Container(
            width: double.infinity,
            height: 45,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Color(0xffE5890A).withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 3)),
            ]),
            child: RawMaterialButton(
              fillColor: Styling.primaryColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Nav()));
              },
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Amiko",
                    fontSize: 16,
                    fontWeight: Styling.semibold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 50),
          Divider(
            thickness: 1,
            color: Styling.primaryColor.withOpacity(0.5),
          ),
          const SizedBox(height: 45),
          const Text(
            "Don't Have Account ? Register",
            style: TextStyle(
                fontFamily: "Amiko",
                fontSize: 12,
                fontWeight: Styling.semibold,
                color: Styling.secondaryColor),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ));
  }
}
