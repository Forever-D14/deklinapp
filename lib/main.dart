import 'package:deklinapp/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeklinApp',
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginPage()
          );
      },
    );
  }
}

