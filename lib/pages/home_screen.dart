import 'package:coffeeku/components/item_coffee.dart';
import 'package:coffeeku/pages/order_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  static var heightScreen;
  static var widthScreen;
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widthScreen = MediaQuery.of(context).size.width;
    heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Styling.bg,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      border: Border.all(
                          width: 1, color: Colors.white.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      Icons.filter_list,
                      color: Styling.primaryColor.withOpacity(0.6),
                      size: 20,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      border: Border.all(
                          width: 1, color: Colors.white.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Icon(
                      Icons.notifications_active,
                      color: Styling.primaryColor.withOpacity(0.6),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  Text(
                    "Find Your Favorite",
                    style: TextStyle(
                        fontFamily: "Amiko",
                        fontSize: 25,
                        fontWeight: Styling.bold,
                        color: Colors.white),
                  ),
                  Text(
                    "Coffee",
                    style: TextStyle(
                        fontFamily: "Amiko",
                        fontSize: 20,
                        color: Styling.secondaryColor,
                        fontWeight: Styling.semibold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: TextField(
                style: const TextStyle(color: Styling.secondaryColor),
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Styling.primaryColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Styling.primaryColor.withOpacity(0.6),
                    ),
                    hintText: "Search Your Fav Coffee",
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.3),
                    ),
                    fillColor: Colors.white.withOpacity(0.2),
                    filled: true,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15.0))),
              ),
            ),
            TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "Machiatto"),
                Tab(text: "Cappucino"),
                Tab(text: "Americano"),
                Tab(text: "Brew"),
              ],
              labelColor: Styling.primaryColor,
              labelStyle: const TextStyle(
                fontFamily: "Amiko",
                fontSize: 15,
              ),
              labelPadding: const EdgeInsets.symmetric(horizontal: 20),
              unselectedLabelColor: Styling.primaryColor.withOpacity(0.5),
              isScrollable: true,
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Styling.secondaryColor,
                ),
                insets: EdgeInsets.symmetric(horizontal: 16),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ItemCoffee(
                      widthScreen: widthScreen,
                      heightScreen: heightScreen,
                      context: context,
                      images: "assets/img/macwhip.jpg",
                      title: "Macchiatto Whip",
                      subTitle: "Witt whipcream fresh",
                      price: "24K",
                      rate: 2.5),
                  ItemCoffee(
                      widthScreen: widthScreen,
                      heightScreen: heightScreen,
                      context: context,
                      images: "assets/img/icemac.jpg",
                      title: "Ice Machiatto",
                      subTitle: "With Milk Cream",
                      price: ". 27K",
                      rate: 2.9),
                  ItemCoffee(
                      widthScreen: widthScreen,
                      heightScreen: heightScreen,
                      context: context,
                      images: "assets/img/mavOri.jpg",
                      title: "Machiatto Original",
                      subTitle: "With Pure Machiatto",
                      price: ". 23K",
                      rate: 2.6),
                  ItemCoffee(
                      widthScreen: widthScreen,
                      heightScreen: heightScreen,
                      context: context,
                      images: "assets/img/macLat.jpg",
                      title: "Machiatto Latte",
                      subTitle: "With Fresh Milk",
                      price: ". 20K",
                      rate: 2.2),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 5),
              child: ListTile(
                leading: Text(
                  "Recommended Coffee",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Amiko",
                      fontWeight: Styling.semibold),
                ),
              ),
            ),
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.all(12),
                  height: heightScreen * 0.2 - 20,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                spreadRadius: 1.0,
                                color: Styling.primaryColor.withOpacity(0.4),
                              ),
                            ],
                            image: const DecorationImage(
                                image: AssetImage("assets/img/macLat.jpg"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Machiatto Latte Coffe \n With Caramel",
                                style: TextStyle(
                                    fontFamily: "Amiko",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: Styling.semibold)),
                            Text(
                              "You Must Try !",
                              style: TextStyle(color: Styling.primaryColor),
                            ),
                          ],
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
