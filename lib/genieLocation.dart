import 'package:flutter/material.dart';

import 'genieMap.dart';

class GenieLocation extends StatelessWidget {
  const GenieLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
        backgroundColor: Color(0xff2A347A),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            TextField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Color(0xff2A347A)),
                  border: OutlineInputBorder(),
                  hintText: 'Search for Area, Street name ....'),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GenieMap()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.filter_center_focus,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add pickup Location',
                    style: TextStyle(fontSize: 18, color: Color(0xff2A347A)),
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
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GenieMap()));
              },
              child: Row(
                children: [
                  Icon(
                    Icons.filter_center_focus,
                    color: Color(0xff2A347A),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Add Dropoff Location',
                    style: TextStyle(fontSize: 18, color: Color(0xff2A347A)),
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
          ],
        ),
      )),
    );
  }
}
