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
          child: Text("Nominativ")
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => AkkusativPage()));
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}