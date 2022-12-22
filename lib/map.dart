import 'package:flutter/material.dart';
import 'package:foodybazar/home.dart';

class Map extends StatelessWidget {
  const Map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Home(
                  city: 'Bhairahawa',
                );
              },
            ),
          );
        },
        child: const Text('Continue'),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
          backgroundColor: Colors.red,
          minimumSize: const Size(double.infinity, 50),
        ),
      ),
      appBar: AppBar(
        title: Text('Map'),
      ),
      body: SafeArea(
        child: Center(
          child: Text('Map'),
        ),
      ),
    );
  }
}
