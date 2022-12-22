import 'package:flutter/material.dart';

import 'singleProduct.dart';

class CategoryScreen extends StatelessWidget {
  // dynamic data
  final String category;
  final String image;

  // constructor
  CategoryScreen(this.category, this.image);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                category,
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.search,
                color: Colors.red,
              ),
            ],
          ),
        ),

        // create a list view
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              // Add image using clipRect
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  image,
                  width: double.infinity,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20.0),
              // Grid of 2 items per row, the items will contain image, text, price and add to cart button
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 10.0),
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SingleProduct()));
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/oreo.png',
                              width: double.infinity,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        // Text
                        Text(
                          'Food',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        // Price
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Price',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Add',
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.green),
                            ),
                          ],
                        ),

                        // Add to cart button
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ));
  }
}
