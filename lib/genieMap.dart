import 'package:flutter/material.dart';

import 'deliveryItems.dart';

class GenieMap extends StatelessWidget {
  const GenieMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DeliveryItems()),
          );
        },
        child: const Text('Continue'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          backgroundColor: Color(0xff2A347A),
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
      appBar: AppBar(
        title: Text('Map'),
        backgroundColor: Color(0xff2A347A),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Map'),
        ),
      ),
    );
  }
}
