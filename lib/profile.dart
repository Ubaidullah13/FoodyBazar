import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 242, 242, 242),
      body: Material(
        color: Color.fromARGB(255, 242, 242, 242),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
                //Divider(thickness: 3, color: Colors.black12),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    // scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                DefaultTextStyle(
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.w600),
                                    child: Text("Hardik")),
                                SizedBox(height: 10),
                                DefaultTextStyle(
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.normal),
                                    child: Text("View Activity")),
                              ],
                            ),

                            // Add image
                            CircleAvatar(
                              radius: 40,
                              backgroundImage:
                                  AssetImage('assets/images/food.jpg'),
                            ),
                          ]),
                      SizedBox(height: 20),
                      Divider(thickness: 2, color: Colors.black12),
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
                      Divider(thickness: 2, color: Colors.black12),
                      SizedBox(height: 12),
                      Center(
                        child: const Text(
                          "Food Orders",
                          style: TextStyle(color: Colors.black54, fontSize: 20),
                        ),
                      ),
                      SizedBox(height: 18),
                      Row(
                        children: [
                          Icon(Icons.file_copy_outlined,
                              color: Colors.black, size: 25.0),
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
                              color: Colors.black, size: 25.0),
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
                              color: Colors.black, size: 25.0),
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
                          Icon(Icons.chat, color: Colors.black, size: 25.0),
                          SizedBox(width: 10.0),
                          const Text("Online Ordering Book",
                              style: TextStyle(fontSize: 18))
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(Icons.info_outline,
                              color: Colors.black, size: 25.0),
                          SizedBox(width: 10.0),
                          const Text("About", style: TextStyle(fontSize: 18))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(thickness: 2, color: Colors.black12),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          const Text("Send Feedback",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          const Text("Rate us on App store",
                              style: TextStyle(fontSize: 16)),
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "Log out",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
