import 'package:flutter/material.dart';
import 'package:foodybazar/personalDetails.dart';

import 'package:otp_text_field/otp_field.dart';

import 'package:otp_text_field/style.dart';

import 'home.dart';

class OTP extends StatelessWidget {
  const OTP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
            title: const Text('OTP Verification',
                style: TextStyle(color: Colors.black)),
            backgroundColor: Colors.white,

            // icon: const Icon(Icons.arrow_back_ios)

            leading: const Icon(
              Icons.arrow_back_ios,
              size: 24,
              color: Colors.black,
            )),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              const Text(
                "We have sent a verification code to ",
                style: TextStyle(fontSize: 17),
              ),
              SizedBox(height: 15),
              const Text(
                "+92 123456789",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              OTPTextField(
                length: 4,
                width: MediaQuery.of(context).size.width,
                fieldWidth: 70,
                style: TextStyle(fontSize: 17),
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldStyle: FieldStyle.underline,
                onChanged: (pin) {
                  print("Changed: " + pin);
                },
                onCompleted: (pin) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return personalDetails();
                      },
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: const Text("Resend SMS in 17"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black54,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(12.0),
                          textStyle: const TextStyle(fontSize: 18),
                          side: BorderSide(width: 2.0, color: Colors.black45),
                          minimumSize: Size(169, 48)),
                      onPressed: () {},
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      child: const Text("Call me in 17"),
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black54,
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.all(12.0),
                          textStyle: const TextStyle(fontSize: 18),
                          side: BorderSide(width: 2.0, color: Colors.black45),
                          minimumSize: Size(169, 48)),
                      onPressed: () {},
                    ),
                  ]),
              SizedBox(height: 20),
              const Text(
                "Try other login methods",
                style: TextStyle(fontSize: 20, color: Colors.red),
              )
            ],
          ),
          height: 250,
          width: 500,
          margin: const EdgeInsets.all(8.0),
        ),
      ),
    );
  }
}
