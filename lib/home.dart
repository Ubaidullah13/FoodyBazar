import 'package:flutter/material.dart';

import 'package:foodybazar/Genie.dart';

import 'RestHome.dart';

import 'mart.dart';
import 'favourite.dart';
import 'notification.dart';

class Home extends StatefulWidget {
  final String city;
  const Home({Key? key, required this.city}) : super(key: key);
  @override
  State<Home> createState() => _HomeState(city: city);
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  final String city;

  _HomeState({Key? key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: currentIndex == 0
      //     ? RestHome()
      //     : currentIndex == 1
      //         ? InstaMart()
      //         : Genie(),
      body: IndexedStack(
        index: currentIndex,
        children: [
          RestHome(
            city: city,
          ),
          InstaMart(),
          Genie(),
          Favourite(),
          Noti(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Restuarants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket_rounded),
            label: 'Grocery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_shipping),
            label: 'Genie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Fav',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',
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
