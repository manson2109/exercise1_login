import 'package:exercise1_login/screens/second_screen.dart';
import 'package:flutter/material.dart';

//TODO: rename class to a more meaningful name
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
        //TODO: make text a parameter so that any text can be put in the button and not just login
        child: const Text('Login'),
        //TODO: make on pressed a parameter of the class so that the navigator can be used for any screen
        onPressed: () {
          //TODO: remove set state , no use here
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          });
        },
      ),
    );
  }
}
