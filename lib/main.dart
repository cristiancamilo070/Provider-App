// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/pages/home_page.dart';
import 'package:provider/pages/map_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Provider Examples',
      initialRoute: 'home',
      routes: {
        'home'  :(_)=>HomePage(),
        'map'   :(_)=>MapPage()
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.deepPurple
        )

      )
    );
  }
}