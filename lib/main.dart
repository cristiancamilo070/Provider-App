
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testprov/pages/home_page.dart';
import 'package:testprov/pages/map_page.dart';
import 'package:testprov/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>UiProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'testprov',
        initialRoute: 'home',
        routes: {
          'home'  :(_)=>const HomePage(),
          'map'   :(_)=>const MapPage()
        },
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepPurple
          )
    
        )
      ),
    );
  }
}