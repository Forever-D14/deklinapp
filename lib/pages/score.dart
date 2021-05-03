import 'package:deklinapp/pages/index.dart';
import 'package:deklinapp/pages/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FinalScore extends StatelessWidget{
  final int score;

  FinalScore(this.score);

  @override
  Widget build(BuildContext context) {
    MaterialColor x;
    if(this.score<6)
      x = Colors.red;
    else
      x = Colors.green;
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
          children: [
            Container(
              child:Text("Resultados Finales",style: TextStyle(fontSize: 30),),
              padding: EdgeInsets.all(40),
            ),
            Container(
              child:Text(this.score.toString()+"/"+"10",style: TextStyle(fontSize: 50, color: x),),
              padding: EdgeInsets.all(40),
            ),
            Row(
              children: [
                Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 60.0, right: 20.0,top: 30),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.amber,
                        child: Text("Menú"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    )
                ),
                Container(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 40.0,top: 30),
                      child: RaisedButton(
                        textColor: Colors.white,
                        color: Colors.amber,
                        child: Text("Cerrar Sesión"),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
                        },
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                    )
                )
              ],
            )
          ],
        )
      ),
    );
  }

}
