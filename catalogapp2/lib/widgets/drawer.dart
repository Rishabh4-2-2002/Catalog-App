import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageUrl =
      "https://media-exp1.licdn.com/dms/image/C5603AQGu86ydhUDWjw/profile-displayphoto-shrink_200_200/0/1635654922986?e=1661385600&v=beta&t=rl_wPe2YqRvctGs9b7com0XBaLfV445YiEh4b4sVBGM";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [ 
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Rishabh Handoo"),
                  accountEmail: Text("Rishabh105179@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  )),
            ),
            //list tile also has ontap feature
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "home",
                style: TextStyle(color: Colors.white),
              textScaleFactor: 1.2  ,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "mail id",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2  ,
              ),
            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "contact me here",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2  ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
