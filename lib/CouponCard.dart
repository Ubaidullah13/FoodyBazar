import 'package:flutter/material.dart';

class CouponCard extends StatelessWidget {
  // Dynamic data
  final String coupon;
  final String couponText;

  // Constructor
  const CouponCard({
    Key? key,
    required this.coupon,
    required this.couponText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Color(0xffFFF6FB),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            children: [
              Icon(Icons.local_offer_outlined,
                  color: Color(0xffB7106A), size: 20),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coupon,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    couponText,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
