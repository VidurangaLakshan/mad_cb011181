import 'package:flutter/material.dart';

import 'package:untitled/screens/account_selection.dart';
import 'package:untitled/screens/bottom_nav.dart';
import 'package:untitled/screens/intro1.dart';
import 'package:untitled/screens/intro2.dart';
import 'package:untitled/screens/intro3.dart';
import 'package:untitled/screens/register_page.dart';
import 'package:untitled/screens/login_page.dart';
import 'package:untitled/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   // scaffoldBackgroundColor: Color(0xFF212325),
      // ),
      theme: lightMode,
      darkTheme: darkMode,
      home: Intro1(),
      routes: {
        '/intro1': (context) => Intro1(),
        '/intro2': (context) => Intro2(),
        '/intro3': (context) => Intro3(),
        '/account': (context) => AccountSelection(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/nav' : (context) => BottomNav(),
      },
    );
  }
}
