import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  // Dynamic data
  final String name;
  final int price;
  final String image;

  // Constructor
  const CartItem(
      {Key? key, required this.name, required this.price, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(name),
        subtitle: Text('Price: \$ $price'),
        trailing: Icon(Icons.remove_circle),
      ),
    );
  }
}
