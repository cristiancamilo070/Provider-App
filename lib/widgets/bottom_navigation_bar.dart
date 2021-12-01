// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 1,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon:Icon(Icons.map),
          label: 'mapa'
        ),
        BottomNavigationBarItem(
          icon:Icon(Icons.compass_calibration),
          label: 'direcciones'
        )
      ],
    );
  }
}