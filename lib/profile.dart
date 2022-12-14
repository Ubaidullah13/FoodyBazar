import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
                title: const Text('', style: TextStyle(color: Colors.black)),
                backgroundColor: Colors.white,
                leading: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.black,
                  ),
                )),
            body: Container(
              child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 200,
                                height: 70,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, top: 20, right: 0, bottom: 0),
                                  child: const Text(
                                    "Hardik",
                                    style: TextStyle(
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                              ),
                              new Container(
                                width: 80,
                                height: 80,
                                decoration: new BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: new AssetImage(
                                        'assets/images/food.jpg'),
                                  ),
                                ),
                              ),
                            ]),
                        SizedBox(height: 30),
                        SizedBox(
                            width: double.infinity,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                        SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.black,
                                ),
                                const Text("Likes")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.notifications_active_outlined,
                                  color: Colors.black,
                                ),
                                const Text("Notifications")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.settings_outlined,
                                  color: Colors.black,
                                ),
                                const Text("Settings")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(
                                  Icons.wallet_outlined,
                                  color: Colors.black,
                                ),
                                const Text("Payments")
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                            width: double.infinity,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                        SizedBox(height: 12),
                        const Text(
                          "Food Orders",
                          style: TextStyle(color: Colors.black54, fontSize: 20),
                        ),
                        SizedBox(height: 18),
                        Row(
                          children: [
                            Icon(Icons.file_copy_outlined,
                                color: Colors.black, size: 32.0),
                            SizedBox(width: 10.0),
                            const Text("Your Orders",
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite_border_outlined,
                                color: Colors.black, size: 32.0),
                            SizedBox(width: 10.0),
                            const Text("Favourite Orders",
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Icon(Icons.pin_drop_outlined,
                                color: Colors.black, size: 32.0),
                            SizedBox(width: 10.0),
                            const Text("Address Book",
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            Icon(Icons.chat, color: Colors.black, size: 32.0),
                            SizedBox(width: 10.0),
                            const Text("Online Ordering Book",
                                style: TextStyle(fontSize: 18))
                          ],
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                            width: double.infinity,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(Icons.info_outline,
                                color: Colors.black, size: 32.0),
                            SizedBox(width: 10.0),
                            const Text("About", style: TextStyle(fontSize: 18))
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const Text("Send Feedback",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const Text("Rate us on App store",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            const Text("Log out",
                                style: TextStyle(fontSize: 18)),
                          ],
                        ),
                      ])),
            )));
  }
}
