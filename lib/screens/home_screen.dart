import 'package:exercise1_login/screens/second_screen.dart';
import 'package:exercise1_login/services/newsfeed_services.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  dynamic _text;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  Widget _buildUserName() {
    return TextFormField(
      validator: (dynamic value) {
        if (value.isEmpty) {
          return 'Please enter username';
        }
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter login name',
      ),
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      obscureText: true,
      validator: (dynamic value) {
        if (value.isEmpty) {
          return 'Please enter password';
        } else if (value.length < 5) {
          return 'Password needs to be more than 5 characters';
        }
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter Password',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formkey,
          //padding: const EdgeInsets.all(10.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10.0,
                ),
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
                const SizedBox(
                  height: 10.0,
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
                _buildUserName(),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Enter password:"),
                  ),
                ),
                _buildPassword(),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 50,
                  width: 100.0,
                  padding: const EdgeInsets.only(top: 10.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ElevatedButton(
                    //TODO: make text a parameter so that any text can be put in the button and not just login
                    child: const Text('Login'),
                    //TODO: make on pressed a parameter of the class so that the navigator can be used for any screen
                    onPressed: () {
                      if (!_formkey.currentState!.validate()) {
                        return;
                      }
                      _formkey.currentState!.save();
                      print(_text);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Home()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
