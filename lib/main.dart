import 'package:flutter/material.dart';
import 'package:flutter_reboot/Pages/homepage.dart';
import './Pages/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/login": (context) => LoginPage(),
        "/Home": (context) => HomePage(),
      },
    );
  }
}
