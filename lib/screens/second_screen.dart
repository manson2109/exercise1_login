import 'package:flutter/material.dart';

//TODO: add key in constructor
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Text tutorial"),
        ),
        body: const Text("Hi"));
  }
}
