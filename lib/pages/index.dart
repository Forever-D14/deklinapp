import 'package:deklinapp/pages/exercise.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deklinapp/pages/nominativ.dart';

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
                textColor: Colors.black,
                color: Colors.amber,
                child: Column(
                 children: [
                   Container(child: Image.asset("assets/medal.png",height: 50,width: 50),padding: EdgeInsets.only(top:30, bottom: 20),),
                   Container(child: Text("Principiante",style: TextStyle(fontFamily: 'ConcertOne'),),padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),),
                   Container(child: Text("Obten un pequeño ",),padding: EdgeInsets.only(left: 10,right: 10)),
                   Container(child: Text("tutorial teórico de la ",),padding: EdgeInsets.only(left: 10,right: 10)),
                   Container(child: Text("declinación",),padding: EdgeInsets.only(left: 10,right: 10, bottom: 20)),
                 ],
                ),
                onPressed: () {
                  //nueva ruta
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NominativPage()));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0,top:50),
              child: RaisedButton(
                textColor: Colors.black,
                color: Colors.redAccent[700],
                child: Column(
                  children: [
                    Container(child: Image.asset("assets/trophy.png",height: 50,width: 50),padding: EdgeInsets.only(top:30, bottom: 20),),
                    Container(child: Text("Avanzado"),padding: EdgeInsets.only(left: 50,right: 50,bottom: 10),),
                    Container(child: Text("Vamos a los ",),padding: EdgeInsets.only(left: 10,right: 10)),
                    Container(child: Text("ejercicios!!!!",),padding: EdgeInsets.only(left: 10,right: 10,bottom: 20)),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(index: 1,)));
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