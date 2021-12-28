import 'package:exercise1_login/screens/second_screen.dart';
import 'package:flutter/material.dart';

class CallSecond extends StatefulWidget {
  const CallSecond({Key? key}) : super(key: key);

  @override
  _CallSecondState createState() => _CallSecondState();
}

class _CallSecondState extends State<CallSecond> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100.0,
      padding: EdgeInsets.only(top: 10.0),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
      ),
      child: ElevatedButton(
        child: Text('Login'),
        onPressed: () {
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
