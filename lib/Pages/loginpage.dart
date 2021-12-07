import 'package:flutter/material.dart';
import 'package:flutter_reboot/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;

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
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
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
          // ElevatedButton(
          //     onPressed: () {
          //       print('button functionality to be added!');
          //       Navigator.pushNamed(context,MyRoutes.homeRoute);
          //     },
          //     child: Text(
          //       'Login',
          //       style: TextStyle(color: Colors.white),
          //     ),
          //     style: TextButton.styleFrom(minimumSize:Size(200, 40) ),
          //     ),
          InkWell(
            onTap: () async {
              
              setState(() {
                changeButton = !changeButton;
              });
              await Future.delayed(Duration(seconds: 1));
              Navigator.pushNamed(context,MyRoutes.homeRoute);
            },
            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              height: 50,
              width: changeButton ? 50 : 200,
              alignment: Alignment.center,
              child:changeButton ? Icon(Icons.done,color: Colors.white) : Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                borderRadius: BorderRadius.circular(changeButton ? 50 : 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
