import 'package:flutter/material.dart';
import 'package:foodybazar/profile.dart';

import 'Restaurant.dart';
import 'location.dart';

class RestHome extends StatefulWidget {
  final String city;

  const RestHome({Key? key, required this.city}) : super(key: key);

  @override
  State<RestHome> createState() => _RestHomeState();
}

class _RestHomeState extends State<RestHome> {
  bool _showMore = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Material(
          color: Colors.white,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(Icons.pin_drop, color: Colors.red, size: 30.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.all(0.0),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                              onPressed: () {
                                _bottomSheetLoc(context);
                              },
                              child: Row(
                                children: [
                                  Text(
                                    widget.city,
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Icon(Icons.arrow_drop_down,
                                      color: Colors.red, size: 30.0),
                                ],
                              ),
                            ),
                            Text(
                              'Main Road, oP Nandan Medical',
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //Expanded(child: SizedBox()),
                      TextButton(
                        child: Icon(Icons.circle_rounded,
                            color: Colors.red, size: 40.0),
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
                    height: 5.0,
                  ),
                  // Text field
                  TextField(
                    decoration: const InputDecoration(
                      prefixIcon:
                          Icon(Icons.search, color: Colors.red, size: 15.0),
                      border: OutlineInputBorder(),
                      hintText: 'Restaurant, location or mood...',
                      hintStyle: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.all(0.0),
                      suffixIcon: Icon(Icons.keyboard_voice,
                          color: Colors.red, size: 15.0),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Pure Veg",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Non-Veg",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Newly-Added",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Newly-Open",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "Has Offer",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        SizedBox(width: 10.0),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              "BestSeller",
                              style: TextStyle(fontSize: 12.0),
                            )),
                        // OutlinedButton(
                        //     onPressed: () {}, child: Icon(Icons.filter_list)),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.0),
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
                            child: Text("Eat what makes you happy")),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon Button
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/pizzahut.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Pizza Hut",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/burgerking.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Burger King",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/veg1.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Vegetarian",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/kfc.jpg",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "KFC",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Icon Button
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/mcdonald.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "McDonald",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/dominopizza.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Domino's Pizza",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/nonveg.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Chicken Chef",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                onPressed: () {},
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(30.0),
                                      child: Image.asset(
                                        "assets/images/veg2.png",
                                        height: 50.0,
                                        width: 50.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(height: 5.0),
                                    Text(
                                      "Natural Food",
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        !_showMore
                            ? Center(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    // rounded outline border
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    side: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _showMore = !_showMore;
                                    });
                                  },
                                  child: Text(
                                    "See More",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              )
                            : Container(),
                        _showMore
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Icon Button
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            "assets/images/mcdonald.png",
                                            height: 50.0,
                                            width: 50.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(height: 5.0),
                                        Text(
                                          "McDonald",
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Image.asset(
                                            "assets/images/dominopizza.png",
                                            height: 50.0,
                                            width: 50.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        SizedBox(height: 5.0),
                                        Text(
                                          "Domino's Pizza",
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            : Container(),
                        _showMore
                            ? Center(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    // rounded outline border
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    side: BorderSide(
                                      color: Colors.grey,
                                      width: 1.0,
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _showMore = !_showMore;
                                    });
                                  },
                                  child: Text(
                                    "See Less",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              )
                            : Container(),
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
                        Row(children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/winter.jpg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/summer.jpg',
                                width: double.infinity,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ]),
                        SizedBox(height: 20.0),
                        DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                            child: Text("All restaurants around you (10)")),
                      ],
                    ),
                  ),
                  RestaurantCard(
                    image: Image.asset('assets/images/burgerKing.jpg',
                        width: double.infinity, fit: BoxFit.cover, height: 200),
                    name: "Burger King",
                    rating: 4.5,
                    type: "Fast Food",
                    address: "Lal Chock, Kathmandu",
                    startingPrice: 200,
                    VegBadge: "BOTH",
                    distance: 0.3,
                  ),
                  RestaurantCard(
                    image: Image.asset('assets/images/PizzaHut.jpg',
                        width: double.infinity, fit: BoxFit.cover, height: 200),
                    name: "Pizza Hut",
                    rating: 4.2,
                    type: "Pizza, Desserts",
                    address: "Lal Chock, Kathmandu",
                    VegBadge: "NON-VEG",
                    distance: 3,
                  ),
                  RestaurantCard(
                    image: Image.asset('assets/images/ahdoo.jpg',
                        width: double.infinity, fit: BoxFit.cover, height: 200),
                    name: "Adhoo\s",
                    rating: 4.3,
                    type: "South Indian",
                    address: "Lal Chock, Kathmandu",
                    startingPrice: 1500,
                    VegBadge: "VEG",
                    distance: 1.5,
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
  // Dynamic data
  final String name;
  final String address;
  final double rating;
  final Image image;
  final int? startingPrice;
  final String type;
  final String VegBadge;
  final double distance;

  const RestaurantCard({
    Key? key,
    required this.name,
    required this.address,
    required this.rating,
    required this.image,
    required this.type,
    required this.VegBadge,
    required this.distance,
    this.startingPrice,
  }) : super(key: key);

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
                  return Restaurant(
                    name: name,
                    address: address,
                    rating: rating,
                    image: image,
                    type: type,
                  );
                },
              ),
            );
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (VegBadge == "VEG")
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[400],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 30,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        VegBadge,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                if (VegBadge == "NON-VEG")
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 30,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        VegBadge,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                if (VegBadge == "BOTH")
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    height: 30,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        VegBadge,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                // Container with background image, favourite icon and distance
                Stack(
                  children: [
                    // Add image
                    ClipRRect(
                      child: image,
                    ),
                    // Add favourite icon
                    Positioned(
                      top: 10,
                      right: 10,
                      child: Container(
                        // Add circular border radius
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    // Add distance
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Colors.red,
                              size: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "$distance km",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 5.0),
                          child: Row(
                            children: [
                              Text(
                                rating.toString(),
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 12.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                  child: Row(
                    children: [
                      Text(
                        type,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(flex: 2, child: SizedBox()),
                      startingPrice != null
                          ? Text(
                              "Starting from ₹" + startingPrice.toString(),
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 10.0),
                  child: Text(
                    address,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

void _bottomSheetLoc(context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 200,
            child: ListView(
              shrinkWrap: true,
              children: [
                Icon(Icons.location_off, size: 50, color: Colors.red),
                Center(
                  child: Text(
                    "Device Location not Enabled",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    "Please enable location to get the best experience",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Enable Location",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Location();
                          },
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Search Location Manually",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
