import 'package:exercise1_login/screens/second_screen.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100.0,
      padding: const EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: ElevatedButton(
        child: const Text('Login'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          );
        },
      ),
    );
  }
}
