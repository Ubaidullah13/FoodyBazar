import 'package:flutter/material.dart';
import 'package:foodybazar/home.dart';

class City extends StatelessWidget {
  const City({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select City'),
      ),
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Column(
                    children: [
                      // Add circular image using cliprrect
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage('assets/images/bhairahawa.jpg'),
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
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
                          child: const Text('Bhairahawa'),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                )),
                Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Column(
                    children: [
                      // Add circular image using cliprrect
                      const ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage('assets/images/butwal.jpg'),
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Home(
                                    city: 'Butwal',
                                  );
                                },
                              ),
                            );
                          },
                          child: const Text('Butwal'),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
                )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
