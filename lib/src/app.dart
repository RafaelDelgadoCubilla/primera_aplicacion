import 'package:flutter/material.dart';
import 'package:primera_aplicacion/src/pages/contador_page.dart';
//import 'package:primera_aplicacion/src/pages/home_page.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: ContadorPage()
      //home: HomePage()      
    );
  }
}