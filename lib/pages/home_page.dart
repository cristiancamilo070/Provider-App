
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprov/pages/address_page.dart';
import 'package:testprov/pages/maps_page.dart';
import 'package:testprov/providers/ui_provider.dart';
import 'package:testprov/widgets/bottom_navigation_bar.dart';
import 'package:testprov/widgets/scan_button.dart';

import 'map_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.delete_forever_outlined)
          )
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar:  const CustomNavigationBar(),
      floatingActionButton: const ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Obtener el selected menu opt
    final uiProvider=Provider.of<UiProvider>(context);

    //This one needs to be the same in the 2 classes
    final currentIndex=uiProvider.selectedMenuOpt;
    switch (currentIndex) {
      case 0 : return const MapsPage();
      case 1 : return const AddressPage();
      default: return const MapPage();
    }
  }
}