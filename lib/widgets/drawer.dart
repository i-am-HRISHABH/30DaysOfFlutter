import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrlP =
        'https://scontent-bom1-2.cdninstagram.com/v/t51.2885-15/e35/242695662_288631719414043_1496721212294513403_n.webp.jpg?_nc_ht=scontent-bom1-2.cdninstagram.com&_nc_cat=107&_nc_ohc=R1abfNToV2wAX8_lXBZ&edm=AP_V10EBAAAA&ccb=7-4&oh=dd6e234ef42183a704e3b501be5b202e&oe=61BAEBCC&_nc_sid=4f375e';
    final imageURL =
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.insider.com%2Fchris-hemsworth-posts-photo-huge-arms-gets-trolled-skinny-legs-2021-5&psig=AOvVaw03ZDifrWizZVcReO0eDNeq&ust=1639402639865000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiu9_iw3vQCFQAAAAAdAAAAABAD';
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
                    CircleAvatar(backgroundImage: NetworkImage(imageUrlP)),
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
