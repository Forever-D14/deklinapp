import 'package:flutter/material.dart';
import 'package:deklinapp/pages/akkusativ.dart';

class NominativPage extends StatelessWidget {
  const NominativPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Container(child: Image.asset("assets/logo_DeklinAPP.png"),height: 50,width: 50,padding: EdgeInsets.only(left: 10.0),),
        actions: [
          Container(
            padding: EdgeInsets.only(right:10.0),
            child: CircleAvatar(
              child: Icon(Icons.account_circle,size:40,color: Colors.black),
              backgroundColor: Colors.white,
            )
          )
        ],
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: <Widget>[
              //texto de introduccion
              Row(children: <Widget>[
                  Text("De acuerdo al verbo es que\nse hace la declinacion, y\nlas letras en rojo marcan\ncomo debe ser la terminación\npara dicho caso",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              //titulo
              Padding(
                padding: EdgeInsets.all(7),
                child: Text("Nominativ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              //tabla de declinacion
              Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  child: Image.asset("assets/tablaNom2.png",)
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Container(
                  child: Image.asset("assets/tablaNom3.png",)
                ),
              ),

            ],
          ),
          margin: EdgeInsets.all(15),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AkkusativPage()));
        },
        child: Icon(Icons.arrow_forward,),
        mini: true,
      ),
    );
  }
}