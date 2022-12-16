import 'package:flutter/material.dart';
import 'package:foodybazar/home.dart';

import 'location.dart';

class personalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Personal Details',
                style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,

            // icon: const Icon(Icons.arrow_back_ios)

            leading: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.black,
            )),
        body: Container(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),

                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Name',
                    focusColor: Colors.red,
                  ),
                ),

                SizedBox(height: 50),

                // SizedBox()

                SizedBox(
                  width: double.infinity,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    },
                    child: const Text('Continue'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ]),
        )));
  }
}
