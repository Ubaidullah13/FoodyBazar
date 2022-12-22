import 'package:flutter/material.dart';

import 'OffersCard.dart';
import 'OrderStatus.dart';
import 'cartItem.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return OrderStatus();
              },
            ),
          );
        },
        child: const Text('Total: \$40 ->'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          backgroundColor: Colors.red,
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
      appBar: AppBar(
        title: Text('Review Cart'),
      ),
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            CartItem(
              name: 'Burger',
              price: 10,
              image: 'assets/images/burger.jpg',
            ),
            CartItem(
              name: 'Pizza',
              price: 30,
              image: 'assets/images/pizza.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Offers',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black),
              ),
            ),
            OffersCard(
              coupon: "15% off upto \$20",
              couponText: "Use OTE20 on orders above \$100",
            ),
            OffersCard(
              coupon: "Free Delivery",
              couponText: "Use FD on orders above \$50",
            ),
          ],
        ),
      ),
    );
  }
}
