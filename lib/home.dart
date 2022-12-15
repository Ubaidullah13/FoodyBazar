import 'package:flutter/material.dart';
import 'package:foodybazar/profile.dart';

import 'Restaurant.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Material(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.pin_drop, color: Colors.red),
                      const DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold),
                          child: Text("khatmandu")),
                      Expanded(flex: 2, child: SizedBox()),
                      TextButton(
                        child: Icon(Icons.circle_rounded),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Profile();
                              },
                            ),
                          );
                        },
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // Text field
                  TextField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.red),
                        border: OutlineInputBorder(),
                        hintText: 'Restaurant, location or mood...'),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      OutlinedButton(
                          onPressed: () {}, child: const Text("Pure Veg")),
                      SizedBox(width: 10.0),
                      OutlinedButton(
                          onPressed: () {}, child: const Text("Non-Veg")),
                      SizedBox(width: 10.0),
                      OutlinedButton(
                          onPressed: () {}, child: Icon(Icons.filter_list)),
                    ],
                  ),
                  SizedBox(height: 30.0),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: <Widget>[
                        RestaurantCard(),
                        RestaurantCard(),
                        RestaurantCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Restaurant();
                },
              ),
            );
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 2,
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/images/food.jpg',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700),
                          child: Text("Restaurant Name")),
                      Expanded(flex: 2, child: SizedBox()),
                      DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500),
                          child: Text("4.5")),
                      Icon(Icons.star, color: Colors.red, size: 20),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                          child: Text(
                              "Restaurant Description like we server etc....")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }
}
