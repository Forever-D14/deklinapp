import 'package:flutter/material.dart';
import 'package:deklinapp/pages/login.dart';
import 'package:deklinapp/pages/register.dart';


Map<String,WidgetBuilder> getApplicationRoutes(){
  return <String,WidgetBuilder>{
    '/' : (BuildContext context) => LoginPage(),
    'register' : (BuildContext context) => RegisterPage()
  };
}