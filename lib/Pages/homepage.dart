import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Center(
        child: Container(
          child: Text('flutter'),
          // child: Image.network('https://scontent-bom1-2.cdninstagram.com/v/t51.2885-15/e35/242695662_288631719414043_1496721212294513403_n.webp.jpg?_nc_ht=scontent-bom1-2.cdninstagram.com&_nc_cat=107&_nc_ohc=R1abfNToV2wAX8_lXBZ&edm=AP_V10EBAAAA&ccb=7-4&oh=dd6e234ef42183a704e3b501be5b202e&oe=61BAEBCC&_nc_sid=4f375e'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
