import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class PictProfile extends StatelessWidget {
  const PictProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/img/prof.jpeg"),
          ),
          Positioned(
            child: SizedBox(
              height: 46,
              width: 46,
              child: FlatButton(
                
                onPressed: () {},
                color: Colors.grey,
                child: Icon(Icons.camera_enhance),
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Styling.bg)),
              ),
            ),
            right: -12,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
