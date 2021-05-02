import 'package:flutter/material.dart';

//este será el menu de la app

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(child:Image.asset("assets/logo_DeklinAPP.png",height: 50,width: 50), padding: EdgeInsets.only(left:10.0)),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Icon(Icons.account_circle,size: 40,color: Colors.black,),
              backgroundColor: Colors.white,
          ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            
           //aqui van los botones

            

          ],
        ),
      ),
    );
  }
}