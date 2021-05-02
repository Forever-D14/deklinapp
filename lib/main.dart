import 'package:deklinapp/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeklinApp',
      theme: ThemeData(
        fontFamily: 'ConcertOne',
        primaryColor: Colors.amber,
        accentColor: Colors.redAccent[700]
      ),
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings){
        
        return MaterialPageRoute(
          builder: (BuildContext context) => loginPage()
          );
      },
    );
  }
}

