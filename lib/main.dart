import 'package:flutter/material.dart';
import 'package:flutter_reboot/Pages/homepage.dart';
import 'package:flutter_reboot/utils/routes.dart';
import './Pages/loginpage.dart';
// import 'package:google_fonts/google_fonts.dart';
import './widgets/themes.dart';

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
      darkTheme: MyTheme.darkTheme(context),
      theme: MyTheme.lightTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
      },
    );
  }
}
// factory Item.fromMap(Map<String,dynamic> map){
  //   return Item(
  //     id: map["id"],
  //     name: map["name"],
  //     desc: map["desc"],
  //     image: map["image"],
  //     price: map["price"],
  //     color: map["color"],
  //   );
  // }

  // toMap() => {
  //   "id" : id,
  //   "name" : name,
  //   "desc" : desc,
  //   "price" : price,
  //   "color" : color,
  //   "image" : image,
  // };