// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.scanner),
      onPressed: (){

      },
    );
  }
}