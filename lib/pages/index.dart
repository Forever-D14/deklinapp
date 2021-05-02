import 'package:flutter/cupertino.dart';
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
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0,top:50),
              child: RaisedButton(
                textColor: Colors.amber,
                color: Colors.white70,
                child: Column(
                 children: [
                   Container(child: Image.asset("assets/medal.png",height: 50,width: 50),padding: EdgeInsets.only(top:10, bottom: 20),),
                   Container(child: Text("Principiante"),padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),),
                   Container(child: Align( alignment: Alignment.center,child: Text("Obten un pequeño ",)),padding: EdgeInsets.only(left: 10,right: 10)),
                   Container(child: Align( alignment: Alignment.center,child: Text("tutorial teorico de la ",)),padding: EdgeInsets.only(left: 10,right: 10)),
                   Container(child: Align( alignment: Alignment.center,child: Text("declinacion",)),padding: EdgeInsets.only(left: 10,right: 10)),


                 ], 
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            )
           //aqui van los botones

            

          ],
        ),
      ),
    );
  }
}