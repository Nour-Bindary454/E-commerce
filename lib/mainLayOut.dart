import 'package:ecommerce_app/category.dart';
import 'package:ecommerce_app/favScreen.dart';
import 'package:ecommerce_app/homeScreen.dart';
import 'package:ecommerce_app/profileScreen.dart';
import 'package:ecommerce_app/searchScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainLayOut extends StatefulWidget {
  const mainLayOut({super.key});

  @override
  State<mainLayOut> createState() => _mainLayOutState();
}

class _mainLayOutState extends State<mainLayOut> {
  int selectedIndex = 0;
  List<Widget> screens = [Homescreen(), category(), search(), fav(), profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromARGB(255, 114, 113, 113),
          showSelectedLabels: true,
          selectedIconTheme:
              CupertinoIconThemeData(color: Colors.black, fill: 1),
          iconSize: 25,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.square_grid_2x2,
                ),
                label: 'Categories'),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.search,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart,
              ),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.profile_circled,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
