import 'package:deklinapp/pages/akkusativ.dart';
import 'package:deklinapp/pages/dativ.dart';
import 'package:deklinapp/pages/nominativ.dart';
import 'package:flutter/material.dart';
import 'package:deklinapp/pages/login.dart';
import 'package:deklinapp/pages/register.dart';
import 'package:deklinapp/pages/index.dart';


Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String,WidgetBuilder>{
    '/' : (BuildContext context) => loginPage(),
    'register' : (BuildContext context) => RegisterPage(),
    'index' : (BuildContext context) => MenuPage(),
    'nominativ' : (BuildContext context) => NominativPage(),
    'akkusativ' : (BuildContext context) => AkkusativPage(),
    'dativ' : (BuildContext context) => DativPage()
  };
}