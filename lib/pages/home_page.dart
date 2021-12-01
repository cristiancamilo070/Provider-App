// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/widgets/bottom_navigation_bar.dart';
import 'package:provider/widgets/scan_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.delete_forever_outlined)
          )
        ],
      ),
      body: Center(
        child: Text('Home Page'),
        ),
      bottomNavigationBar: CustomNavigationBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}