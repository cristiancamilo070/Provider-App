// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';


class ScanButton extends StatelessWidget {
  const ScanButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.scanner),
      onPressed: () async{
      String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
                                                    "#3D8BEF", 
                                                    "Cancelar", 
                                                    false, 
                                                    ScanMode.QR);

      // ignore: avoid_print
      print(barcodeScanRes);

      },
    );
  }
}