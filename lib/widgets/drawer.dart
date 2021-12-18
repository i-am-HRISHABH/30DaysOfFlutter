import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrlP =
        'https://scontent-bom1-2.cdninstagram.com/v/t51.2885-15/e35/242695662_288631719414043_1496721212294513403_n.webp.jpg?_nc_ht=scontent-bom1-2.cdninstagram.com&_nc_cat=107&_nc_ohc=R1abfNToV2wAX8_lXBZ&edm=AP_V10EBAAAA&ccb=7-4&oh=dd6e234ef42183a704e3b501be5b202e&oe=61BAEBCC&_nc_sid=4f375e';
    final imageURL =
        'https://scontent-pnq1-2.cdninstagram.com/v/t51.2885-15/e35/p1080x1080/125901832_413196043401642_4908680915974655129_n.jpg?_nc_ht=scontent-pnq1-2.cdninstagram.com&_nc_cat=106&_nc_ohc=LWH7TM-shfQAX8L-XJV&edm=AP_V10EBAAAA&ccb=7-4&oh=00_AT_cpOy8tNqEYX89YeHYNtg2L0Sa01sBVAc-IEgcONRDig&oe=61C5569A&_nc_sid=4f375e';
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text(
                  'hrishabh@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                accountName: Text(
                  'Hrishabh Kumar',
                  style: TextStyle(color: Colors.white),
                ),
                currentAccountPicture:
                    CircleAvatar(backgroundImage: NetworkImage(imageURL)),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white, size: 25),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user,color: Colors.white, size: 25),
              title: Text(
                'Profile',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListTile(
              leading: Icon(Icons.email , color: Colors.white, size: 25),
              title: Text(
                'Email',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
