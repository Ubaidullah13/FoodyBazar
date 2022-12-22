import 'package:flutter/material.dart';

class Noti extends StatelessWidget {
  const Noti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Notification'),
      ),
    );
  }
}
