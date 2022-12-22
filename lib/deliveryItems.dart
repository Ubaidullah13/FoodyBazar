import 'package:flutter/material.dart';

import 'deliveryDetails.dart';

class DeliveryItems extends StatelessWidget {
  const DeliveryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Package Type'),
          backgroundColor: Color(0xff2A347A),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: 100,
              color: Color(0xff2A347A).withOpacity(0.9),
              child: Center(
                child: Text(
                  'Sending high value items are not recommended',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Select Package Type',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // list of text buttons
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Icon and text
                  Icon(
                    Icons.local_shipping,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Small Package',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Icon and text
                  Icon(
                    Icons.local_shipping,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Large Package',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Icon and text
                  Icon(
                    Icons.local_shipping,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Food Items',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Icon and text
                  Icon(
                    Icons.local_shipping,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Documents',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Icon and text
                  Icon(
                    Icons.local_shipping,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Beverages',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Button
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DeliveryDetails()),
                  );
                },
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2A347A),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
