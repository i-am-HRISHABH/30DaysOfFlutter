import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Center(
        child: Container(
          child: Text('Login Page'),
        ),
      ),
    );
  }
}
