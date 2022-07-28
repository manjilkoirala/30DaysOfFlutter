// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageurl =
        "https://media-exp1.licdn.com/dms/image/C5603AQF-KHuXOev8FQ/profile-displayphoto-shrink_200_200/0/1590076084914?e=2147483647&v=beta&t=Z4mSqPsotfi-CULAC43d_t2gE15R6CIc3ABMRedXRT8";
    return Drawer(
        backgroundColor: Colors.white,
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
                leading: Icon(CupertinoIcons.home),
                title: Text('Home'),
                trailing: Icon(CupertinoIcons.forward),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Exit'),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
