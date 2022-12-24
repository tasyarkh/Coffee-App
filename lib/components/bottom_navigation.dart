import 'package:coffeeku/pages/favorite_screen.dart';
import 'package:coffeeku/pages/home_screen.dart';
import 'package:coffeeku/pages/profile_screen.dart';
import 'package:coffeeku/style/style.dart';
import 'package:flutter/material.dart';

class Nav extends StatefulWidget {
  const Nav({Key? key}) : super(key: key);

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Fav(),
    Profile(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: SizedBox(
          height: 65,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            selectedItemColor: Styling.primaryColor,
            unselectedItemColor: Styling.primaryColor.withOpacity(0.3),
            currentIndex: _selectedIndex,
            onTap: _onItemTap,
          ),
        ));
  }
}
