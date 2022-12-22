import 'package:flutter/material.dart';

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How it Works'),
        backgroundColor: Color(0xff2A347A),
      ),
      body: Center(
        child: Text('How it works\' video'),
      ),
    );
  }
}
