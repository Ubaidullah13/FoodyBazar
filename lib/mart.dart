import 'package:flutter/material.dart';

import 'CouponCard.dart';
import 'categoryScreen.dart';

class InstaMart extends StatelessWidget {
  const InstaMart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            color: Color(0xffFFF6FB),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          "FoodyMart",
                          style: TextStyle(
                            color: Color(0xffB7106A),
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffB7106A),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Center(
                              child: Text(
                                "15 - 20 mins",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Card(
                    elevation: 0,
                    child: TextField(
                      decoration: const InputDecoration(
                          prefixIcon:
                              Icon(Icons.search, color: Color(0xffB7106A)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          hintText: 'Search for groceries, veggies and more'),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, left: 10, right: 10, bottom: 10),
                      child: ListView(
                        children: <Widget>[
                          Text(
                            "Save more with coupons",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              CouponCard(
                                coupon: "15% off upto \$20",
                                couponText: "Use OTE20 on orders above \$100",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CouponCard(
                                coupon: "FLAT 50",
                                couponText: "Flat 50% off on all products",
                              ),
                            ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          // Card with background image and text over it
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                saleBanner(
                                  image: "assets/images/winter.jpg",
                                  title: "Winter Sale",
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                saleBanner(
                                  image: "assets/images/summer.jpg",
                                  title: "Summer Sale",
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Shop by category",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // Grid of 4 columns 2 rows
                          GridView.count(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            crossAxisCount: 3,
                            children: [
                              CategoryCard(
                                category: "Fruits & Vegitables",
                                image: "assets/images/FV.png",
                              ),
                              CategoryCard(
                                category: "Dairy, Bread & Eggs",
                                image: "assets/images/Dairy.jpg",
                              ),
                              CategoryCard(
                                category: "Chocolates & Sweets",
                                image: "assets/images/Sweets.jpg",
                              ),
                              CategoryCard(
                                category: "Bakery",
                                image: "assets/images/bakery.jpg",
                              ),
                              CategoryCard(
                                category: "Beverages",
                                image: "assets/images/beverages.jpg",
                              ),
                              CategoryCard(
                                category: "Cleaning & Household",
                                image: "assets/images/Cleaning.jpg",
                              ),
                              CategoryCard(
                                category: "Personal Care",
                                image: "assets/images/personalcare.jpg",
                              ),
                              CategoryCard(
                                category: "Home Care",
                                image: "assets/images/homecare.jpg",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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

class saleBanner extends StatelessWidget {
  // Dynamic Data
  final String image;
  final String title;

  const saleBanner({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {},
              // Give background color to button
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                "Shop Now",
                style: TextStyle(
                  color: Color(0xffB7106A),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  // Dynamic data
  final String category;
  final String image;

  // Constructor
  const CategoryCard({
    Key? key,
    required this.category,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CategoryScreen(category, image)),
        );
      },
      child: Card(
        elevation: 0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  image,
                  height: 60,
                  width: 60,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                category,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
