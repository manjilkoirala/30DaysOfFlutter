// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

late int mode;

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageurl =
        "https://media-exp1.licdn.com/dms/image/C5603AQF-KHuXOev8FQ/profile-displayphoto-shrink_200_200/0/1590076084914?e=2147483647&v=beta&t=Z4mSqPsotfi-CULAC43d_t2gE15R6CIc3ABMRedXRT8";
    return Drawer(
        child: Container(
      color: Colors.blue,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                accountName: Text('Manjil'),
                accountEmail: Text('koiralamanjil7@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                )),
          ),
          ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text('Home',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
              trailing: Icon(CupertinoIcons.forward, color: Colors.white),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.white,
            ),
            title: Text(
              'Email Me',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(CupertinoIcons.forward, color: Colors.white),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: Text(
              'Exit',
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ));
  }
}
