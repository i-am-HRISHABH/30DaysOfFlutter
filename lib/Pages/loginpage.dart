import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  // const LoginPage({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      body: Column(
        children: [
          Image.asset('assets/images/404_error.png'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 32,
            ),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'username',
                    hintText: 'enter the usernsme',
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'enter password',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              )),
        ],
      ),
    );
  }
}
