import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
        child: const DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.amberAccent,
          ),
          child: Text(
            "Hi",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
