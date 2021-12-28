import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Text tutorial",
          style: TextStyle(fontSize: 25.0, color: Colors.amber),
        ),
      ),
      // ignore: prefer_const_constructors
      body: Center(
        child: const Text(
          "Hi",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.blueGrey,
          ),
        ),
      ),
    );
  }
}
