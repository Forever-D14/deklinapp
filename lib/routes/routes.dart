import 'package:flutter/material.dart';
import 'package:deklinapp/pages/login.dart';
import 'package:deklinapp/pages/register.dart';
import 'package:deklinapp/pages/index.dart';


Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String,WidgetBuilder>{
    '/' : (BuildContext context) => loginPage(),
    'register' : (BuildContext context) => RegisterPage(),
    'index' : (BuildContext context) => MenuPage()
  };
}