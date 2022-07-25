// ignore_for_file: prefer_const_constructors

import 'package:day1/pages/homepage.dart';
import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
        child: ListView(
          children: <Widget>[
            // Center(
            //     child: Text(
            //   'Login Page',
            //   style: TextStyle(
            //       fontSize: 40,
            //       fontWeight: FontWeight.bold,
            //       color: Color.fromARGB(255, 12, 152, 216)),
            // )),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Image.network(
                'https://www.freepnglogos.com/uploads/logo-facebook-png/logo-facebook-facebook-logo-png-transparent-svg-vector-bie-supply-13.png',
                width: 300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Center(
                child: TextField(
                  autocorrect: false,
                  obscureText: true,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(0, 40),
                  shape: RoundedRectangleBorder(
                      //to set border radius to button
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
                child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 2, 90, 10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    minimumSize: Size(0, 35),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Create new account',
                    style: TextStyle(fontSize: 16),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
