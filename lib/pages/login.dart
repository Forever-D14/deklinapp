import 'package:flutter/material.dart';

class loginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          Container(child:Image.asset("assets/logo_DeklinAPP.png"))
          ,

          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
