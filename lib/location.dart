import 'package:flutter/material.dart';
import 'map.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.red),
                  border: OutlineInputBorder(),
                  hintText: 'Search for Area, Street name ....'),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Map()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.filter_center_focus,
                    color: Colors.red,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Use Current Location',
                    style: TextStyle(fontSize: 18, color: Colors.red),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Recent Searches',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.timelapse,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Kathmandu, Nepal',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      )),
    );
  }
}
