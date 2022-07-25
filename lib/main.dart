import 'package:day1/pages/homepage.dart';
import 'package:day1/utils/routes.dart';

import 'pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MyRoutes.loginRoutes,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        MyRoutes.loginRoutes: (context) => const Login(),
        MyRoutes.homeRoutes: (context) => const Homepage(),
      },
    );
  }
}
