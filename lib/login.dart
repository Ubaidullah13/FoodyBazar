import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:foodybazar/home.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

import 'otp.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/food.jpg'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  const DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      child: Text("Nepal's #1 Food Delivery App")),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(
                        child: SizedBox(
                            width: 50.0,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                      ),
                      DefaultTextStyle(
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600),
                          child: Text("Login or Signup")),
                      const Expanded(
                        child: SizedBox(
                            width: 50.0,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Material(
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'NPL',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                      onCountryChanged: (country) {
                        print('Country changed to: ' + country.name);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // elevated button
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return OTP();
                            },
                          ),
                        );
                      },
                      child: const Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(
                        child: SizedBox(
                            width: 50.0,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                      ),
                      const Expanded(
                        child: DefaultTextStyle(
                            style: TextStyle(
                                color: Colors.black38,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600),
                            child: Center(child: Text("or"))),
                      ),
                      const Expanded(
                        child: SizedBox(
                            width: 50.0,
                            height: 10.0,
                            child: Card(
                              color: Colors.black12,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Column(children: [
                    SignInButton(
                      Buttons.Google,
                      onPressed: () {},
                    ),
                    // ignore: prefer_const_constructors
                    const SizedBox(
                      height: 5.0,
                    ),
                    SignInButton(
                      Buttons.Email,
                      onPressed: () {},
                    )
                  ]),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const DefaultTextStyle(
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal),
                      child: Text(
                          "By continuing, you agree to our Terms of Use and Privacy Policy")),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
