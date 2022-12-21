import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'city.dart';

import 'otp.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/food.jpg',
                height: 400, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Nepal\'s #1 Food Delivery App',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Expanded(
                        child: Divider(thickness: 2, color: Colors.black12),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Login or Signup',
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const Expanded(
                        child: Divider(thickness: 2, color: Colors.black12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                          borderRadius: BorderRadius.circular(0),
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
                    height: 10.0,
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
                        elevation: 0,
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return City();
                            },
                          ),
                        );
                      },
                      child: const Text('Skip',
                          style: TextStyle(color: Colors.red)),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   // ignore: prefer_const_literals_to_create_immutables
                  //   children: [
                  //     const Expanded(
                  //       child: Divider(thickness: 2, color: Colors.black12),
                  //     ),
                  //     const Expanded(
                  //       child: Text(
                  //         'or',
                  //         style: TextStyle(
                  //           decoration: TextDecoration.none,
                  //           fontSize: 18,
                  //           fontWeight: FontWeight.normal,
                  //           color: Colors.black,
                  //         ),
                  //         textAlign: TextAlign.center,
                  //       ),
                  //     ),
                  //     const Expanded(
                  //       child: Divider(thickness: 2, color: Colors.black12),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(
                  //   height: 20.0,
                  // ),
                  // Column(children: [
                  //   SignInButton(
                  //     Buttons.Google,
                  //     onPressed: () {},
                  //   ),
                  //   // ignore: prefer_const_constructors
                  //   const SizedBox(
                  //     height: 5.0,
                  //   ),
                  //   SignInButton(
                  //     Buttons.Email,
                  //     onPressed: () {},
                  //   )
                  // ]),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'By continuing, you agree to our Terms of Service and Privacy Policy',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
