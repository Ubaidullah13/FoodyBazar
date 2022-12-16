import 'package:flutter/material.dart';
import 'package:foodybazar/profile.dart';
import 'package:foodybazar/swiggy.dart';

import 'RestHome.dart';
import 'Restaurant.dart';
import 'mart.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex == 0
          ? RestHome()
          : currentIndex == 1
              ? InstaMart()
              : Swiggy(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Restuarants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: 'Mart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.food_bank),
            label: 'Swiggy',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
