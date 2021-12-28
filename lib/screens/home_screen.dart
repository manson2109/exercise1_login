// ignore_for_file: unnecessary_const, prefer_const_constructors

import 'package:exercise1_login/screens/stateful.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    ("images/iconlog.png"),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Enter username:",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            const TextField(
              decoration: const InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Enter login name',
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text("Enter password:")),
            ),
            const TextField(
              decoration: const InputDecoration(
                border: const OutlineInputBorder(),
                hintText: 'Enter password',
              ),
            ),
            CallSecond()
          ],
        ),
      ),
    );
  }
}
