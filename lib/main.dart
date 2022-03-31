import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rhoda_ecommerce_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: ThemeData.light().textTheme.copyWith(
          headline1: TextStyle(
            fontSize: 29,
            color: Colors.red[400],
            fontWeight: FontWeight.bold,
          ),
          bodyText1: const TextStyle(
            color: Colors.grey,
            fontSize: 19,
          ),
          bodyText2: const TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.bold,
          )
            ),
        colorScheme: const ColorScheme.light(primary: Colors.white30).copyWith(secondary: Colors.black26),
        scaffoldBackgroundColor: Colors.white,
        //appBarTheme: const AppBarTheme(),
        ),
      home: TabsScreen(),
    );
  }
}

