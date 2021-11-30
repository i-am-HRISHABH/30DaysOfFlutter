import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Login Page'),),
      body: Column(
        children: [
          Image.asset('assets/images/404_error.png')
        ],
      ),
    );
  }
}
