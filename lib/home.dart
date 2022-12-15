import 'package:flutter/material.dart';
import 'package:foodybazar/profile.dart';

import 'Restaurant.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: currentIndex == 0
            ? RestHome()
            : currentIndex == 1
                ? InstaMart()
                : Profile(),
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
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class InstaMart extends StatelessWidget {
  const InstaMart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              width: double.infinity,
              // Add elevation
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                      child: Text("Mart")),
                ),
              ),
            ),
            ClipRRect(
              child: Image.asset(
                'assets/images/instamartBanner.jpg',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      child: Text("Shop what you need")),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      // Icon Button
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.toys),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.liquor),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.microwave),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: IconButton(
                          icon: Icon(Icons.child_friendly),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  // Wrap Card
                  Center(
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: [
                        MartCategory(),
                        MartCategory(),
                        MartCategory(),
                        MartCategory(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MartCategory extends StatelessWidget {
  const MartCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            'assets/images/category.jpg',
            width: 150,
            height: 150,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Category # 01"),
          ),
        ],
      ),
    );
  }
}

class RestHome extends StatelessWidget {
  const RestHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                child: Text("Eat what you love")),
                            SizedBox(height: 10.0),
                            Row(
                              children: [
                                // Icon Button
                                Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.lunch_dining),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.local_pizza),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.ramen_dining),
                                    onPressed: () {},
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                    icon: Icon(Icons.local_cafe),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20.0),
                            DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                child: Text("Check this out!")),
                            SizedBox(height: 10.0),
                            // Add image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                'assets/images/banner.jpg',
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            SizedBox(height: 20.0),
                            DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                                child: Text("All restaurants around you")),
                          ],
                        ),
                      ),
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
