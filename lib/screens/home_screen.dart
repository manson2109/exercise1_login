import 'package:exercise1_login/widgets/OnPressButton.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      ("images/button.jpeg"),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter username:",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter login name',
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Enter password:")),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter password',
                ),
              ),
              const LoginButton()
            ],
          ),
        ),
      ),
    );
  }
}
