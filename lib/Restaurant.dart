import 'package:flutter/material.dart';

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Material(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      children: [
                        Column(
                          children: [
                            DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                                child: Text("Restaurant Name")),
                            DefaultTextStyle(
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.normal),
                                child: Text("Restaurant Description")),
                          ],
                        ),
                        Expanded(flex: 2, child: SizedBox()),
                        DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500),
                            child: Text("4.5")),
                        Icon(Icons.star, color: Colors.red, size: 20)
                      ],
                    ),
                    SizedBox(height: 10),
                    Text("Opens", style: TextStyle(color: Colors.green)),
                    SizedBox(height: 20),
                    SizedBox(
                        width: double.infinity,
                        height: 10.0,
                        child: Card(
                          color: Color.fromARGB(31, 207, 207, 207),
                        )),
                    SizedBox(height: 20),
                    DefaultTextStyle(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        child: Text("About The Restaurant")),
                    SizedBox(height: 10),
                    // Add image
                    Image.asset('assets/images/food.jpg'),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
