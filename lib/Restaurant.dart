import 'package:flutter/material.dart';

import 'CouponCard.dart';
import 'offersCard.dart';
import 'checkout.dart';

class Restaurant extends StatefulWidget {
  // Dyanmic data
  final String name;
  final String address;
  final Image image;
  final double rating;
  final String type;

  // Constructor
  const Restaurant({
    Key? key,
    required this.name,
    required this.address,
    required this.rating,
    required this.image,
    required this.type,
  }) : super(key: key);

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  bool RR = false;
  bool Menu = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //_Menu(context);
        },
        child:
            Text('Menu', style: TextStyle(color: Colors.white, fontSize: 12)),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0))),
      ),
      bottomNavigationBar: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CheckOut(),
            ),
          );
        },
        child: Card(
          child: ListTile(
            leading: Icon(Icons.add_shopping_cart),
            title: Text('View Cart (2)'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
      body: Material(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(children: [
              Row(children: [
                // Add back button
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(flex: 2, child: SizedBox()),
                // Add bookmark icon
                Icon(Icons.favorite_border),
                SizedBox(width: 10),
                Icon(Icons.share),
                SizedBox(width: 10),
                Icon(Icons.more_vert),
              ]),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        widget.type,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        widget.address,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Expanded(flex: 2, child: SizedBox()),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Row(
                        children: [
                          Text(
                            widget.rating.toString(),
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: Colors.green,
                            size: 15.0,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Open Now',
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Menu = !Menu;
                        RR = !RR;
                      });
                    },
                    child: Menu
                        ? Text(
                            'Menu',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.red,
                            ),
                          )
                        : Text(
                            'Menu',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          ),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        RR = !RR;
                        Menu = !Menu;
                      });
                    },
                    child: !RR
                        ? Text(
                            'About & Reviews',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                            ),
                          )
                        : Text(
                            'About & Reviews',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: Colors.red,
                            ),
                          ),
                  ),
                ],
              ),
              Divider(
                color: Colors.grey,
                thickness: 1,
              ),
              SizedBox(height: 20),
              if (Menu) MenuW(),
              if (RR) RRW(),
            ]),
          ),
        ),
      ),
    );
  }
}

class RRW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About the Restaurant',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.price_check,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '200 for two',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.room_service,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Serves Fast Food',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.grey,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              '42 street block k, city',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Text(
              'Reviews & Ratings',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(child: SizedBox()),
            Text(
              'See all',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/food.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem Ispum',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/food.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 15.0,
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem Ispum',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MenuW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              OffersCard(
                coupon: "15% off upto \$20",
                couponText: "Use OTE20 on orders above \$100",
              ),
              SizedBox(
                width: 10,
              ),
              OffersCard(
                coupon: "FLAT 50",
                couponText: "Flat 50% off on all products",
              ),
            ]),
          ),
          SizedBox(height: 20),
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
          SizedBox(height: 20),
          // Text(
          //   "About the Restaurant",
          //   style: TextStyle(
          //     fontSize: 20,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black,
          //   ),
          // ),
          Row(
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Pure Veg",
                    style: TextStyle(fontSize: 12.0),
                  )),
              SizedBox(width: 10),
              OutlinedButton(
                  onPressed: () {},
                  child: const Text(
                    "Non-Veg",
                    style: TextStyle(fontSize: 12.0),
                  )),
              SizedBox(width: 10),
              Icon(Icons.search, color: Colors.red),
            ],
          ),
          SizedBox(height: 10),
          // Add image
          // ClipRRect(
          //   borderRadius: const BorderRadius.only(
          //     topLeft: Radius.circular(10),
          //     topRight: Radius.circular(10),
          //     bottomLeft: Radius.circular(10),
          //     bottomRight: Radius.circular(10),
          //   ),
          //   child: image,
          // ),
          SizedBox(height: 20),
          Text(
            "Explore Menu",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          // Create a card to display menu single menu item with image, text, price, rating and option to add or remove quantity
          MenuCard(
            image: 'assets/images/burger.jpg',
            name: 'Burger',
            price: 10.0,
            description: 'Burger with cheese',
          ),
          MenuCard(
            image: 'assets/images/pizza.jpg',
            name: 'Pizza',
            price: 15.0,
            description: 'Pizza with cheese',
          ),
        ],
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  // Dynamic data
  final String name;
  final String description;
  final double price;
  final String image;

  // Constructor
  const MenuCard({
    Key? key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: TextButton(
        onPressed: () {
          _AddToCart(context, name, description, price, image);
        },
        child: Padding(
          padding: const EdgeInsets.only(
              top: 15.0, bottom: 10.0, left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '\$ $price',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                        height: 100,
                        width: double.infinity,
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          _AddToCart(context, name, description, price, image);
                        },
                        child: Text('Add to Cart'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _AddToCart(
    context, String name, String description, double price, String image) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView(shrinkWrap: true, children: [
            ClipRRect(
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 150,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15.0,
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Text(
                        '198 Reviews',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Additional Items",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      // Faviourite icon
                      Icon(Icons.favorite_outline, color: Colors.red),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "\$ $price",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                  SizedBox(height: 10),
                  // Check box with text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Cheese",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Checkbox(value: false, onChanged: (value) {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Sauce",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Fries",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Drink",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Add Dessert",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '1',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.red,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(
                            // add border
                            side: BorderSide(
                              color: Colors.red,
                              width: 1,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  size: 30,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Add to cart',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(
                            // add border
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        );
      });
}

// void _Menu(context) {
//   // create column with list of items
//   // showModalBottomSheet(
//   //     context: context,
//   //     builder: (BuildContext bc) {
//   //       return Text("Menu");
//   //     });
// }
