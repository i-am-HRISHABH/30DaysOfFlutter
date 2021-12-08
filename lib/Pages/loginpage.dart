import 'package:flutter/material.dart';
import 'package:flutter_reboot/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({ Key key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changeButton = false;
  final formKey = GlobalKey<FormState>();

  takeToHomePage() async {
    if (formKey.currentState.validate()) {
      setState(() {
        changeButton = !changeButton;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Login Page'),
      // ),
      body: SingleChildScrollView(
        child: Column(
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
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'username',
                        hintText: 'enter the usernsme',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "username can't be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'password',
                        hintText: 'enter password',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "password can't be empty";
                        } else if (value.length < 6) {
                          return "atleast 6 characters";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => takeToHomePage(),
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 200,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(Icons.done, color: Colors.white)
                    : Text(
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
      ),
    );
  }
}
