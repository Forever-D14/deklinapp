import 'package:deklinapp/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';

void main() async {

      WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp();
      runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
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

