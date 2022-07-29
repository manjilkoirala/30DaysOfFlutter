// ignore_for_file: prefer_const_constructors
import 'package:day1/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = "";
  String pass = "";
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      Navigator.pushNamed(context, MyRoutes.homeRoutes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'img/login.png',
              width: 320,
            ),
            Text(
              'Welcome',
              style: GoogleFonts.sacramento(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue),
            ),
            Form(
                key: _formkey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value != "Manjil") {
                            return "Username is incorrect";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Enter your username',
                          labelText: 'Username',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value != "Koirala") {
                            return "Password is incorrect";
                          } else {
                            return null;
                          }
                        },
                        autocorrect: false,
                        obscureText: true,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          hintText: 'Enter your password',
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(331.4, 40),
                          shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        onPressed: () {
                          moveToHome(context);
                        },
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                )),
            Center(
                child: Text(
              'Forgot password?',
              style: TextStyle(
                  color: Color.fromARGB(150, 0, 0, 0),
                  fontWeight: FontWeight.bold),
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
              child: Divider(
                thickness: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 90, 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
