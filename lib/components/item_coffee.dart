import 'package:coffeeku/pages/order_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class ItemCoffee extends StatelessWidget {
  const ItemCoffee({
    Key? key,
    required this.widthScreen,
    required this.heightScreen,
    required this.images,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rate,
    required this.context,
  }) : super(key: key);

  final  widthScreen;
  final  heightScreen;
  final String images;
  final  title;
  final  subTitle;
  final  price;
  final  rate;
  final  context;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Orders()));
      },
      child: Container(
        width: widthScreen * 0.4 + 10,
        height: heightScreen * 0.3,
        margin: EdgeInsets.all(14.0),
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 2.0,
                              spreadRadius: 1.0,
                              color: Styling.primaryColor.withOpacity(0.4))
                        ],
                        image: DecorationImage(
                            image: AssetImage(images), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                  flex: 2,
                ),
                SizedBox(
                  height: 8,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: Styling.semibold,
                            fontFamily: "Amiko"),
                      ),
                      SizedBox(height: 4),
                      Text(
                        subTitle,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontFamily: "Amiko",
                            fontSize: 11),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Rp",
                                style: TextStyle(
                                    fontWeight: Styling.regular,
                                    color: Styling.primaryColor,
                                    fontFamily: "Amiko"),
                              ),
                              Text(
                                "$price",
                                style: const TextStyle(
                                    fontWeight: Styling.semibold,
                                    color: Colors.white,
                                    fontFamily: "Amiko"),
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Styling.primaryColor,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child:
                                Icon(Icons.add, size: 25, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 20,
              width: 55,
              decoration: const BoxDecoration(
                color: Color(0xff231715),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(Icons.star, size: 12, color: Styling.primaryColor),
                  Text(
                    "$rate",
                    style: const TextStyle(
                        color: Colors.white, fontWeight: Styling.bold),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
