import 'package:chat/pages/first_page.dart';
import 'package:chat/pages/home_page.dart';
import 'package:chat/pages/second_page.dart';
import 'package:chat/pages/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Edwin", "Ngera"];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:FirstPage(),

      routes: {
          '/homepage': (context)=>Home_Page(),
          '/settings':(context)=>Settings_Page()
      },

    );
  }
}
