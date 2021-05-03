import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:deklinapp/pages/register.dart';
import 'package:deklinapp/pages/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deklinapp/pages/auth_service.dart';

  class loginPage extends StatefulWidget {
    @override
    _loginPageState createState() => _loginPageState();
  }



class _loginPageState extends State<loginPage> {
    final usernameController = TextEditingController();
    final pdController = TextEditingController();
    final databaseReference = FirebaseFirestore.instance;
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    Widget name,name2;

    @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    usernameController.dispose();
    pdController.dispose();
    super.dispose();
  }

   @override
   Widget build(BuildContext context){
      return Scaffold(
      body: Center(
        child: ListView(
          
          children: <Widget>[
          Container(
            child:Image.asset("assets/logo_DeklinAPP.png",height: 150,width: 150,),
            padding: EdgeInsets.only(bottom: 50,top: 60),
          ),
          
          Container(
            child: TextField(
              controller: usernameController,
              enabled: true,
              obscureText: false,
              cursorColor: Colors.redAccent[700],
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username:',fillColor: Colors.amber
              )
            ),
            padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
          ),
          
          Container(
            child: TextField(
              controller: pdController,
              enabled: true,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password:', fillColor: Colors.amber
              ),
                cursorColor: Colors.redAccent[700],
            ),
            padding: EdgeInsets.only(bottom: 15,right: 20,left: 20),
          ),

          Container(
            child: Row(
              
              children: <Widget>[
                Container(
                  child: Padding(
                          padding: EdgeInsets.only(left: 0.0, right: 0.0),
                          child: RaisedButton(
                          textColor: Colors.amber,
                          color: Colors.white70,
                          child: Text("Registrarse"),
                          onPressed: () {

                            Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                          },
                          shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                           ),
                          ),  
                    ),
                  padding: EdgeInsets.only(right: 0,left: 30),
                ),

                Container(
                  child: Padding(
                          padding: EdgeInsets.only(left: 100.0, right: 0.0),
                          child: RaisedButton(
                          textColor: Colors.white,
                          color: Colors.amber,
                          child: Text("Log-In"),
                          onPressed: () async{
                            AuthService auth = AuthService();
                            User user = await auth.signIn(usernameController.text, pdController.text);
                            if(user != null){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                            }else{
                              showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    content:Text("USUARIO O CONTRASEÑA INCORRECTA"),
                                  );
                                },
                              );
                            }

                            //name2 = GetUserName(usernameController.text);
                            //name =Text("Username: " + usernameController.text +" "+ pdController.text);
                              //databaseReference.collection('users').doc(usernameController.text).set({'name': usernameController.text,'email':pdController.text});
                              //name = GetUserName("Ignacio");



                            //if(name.toString() != name2.toString()){
                              //showDialog(
                                //context: context,
                                //builder: (context){
                                 // return AlertDialog(
                                  //  content:name,
                                  //);
                                //},
                              //);}
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => MenuPage()));
                              },
                          shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                           ),
                          ),  
                    )
                )
              ]
            ),
          ),

        ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );    
   }
  
}

//class GetUserName extends StatelessWidget {
//  final String documentId;

//  GetUserName(this.documentId);

//  @override
//  Widget build(BuildContext context) {
//    CollectionReference users = FirebaseFirestore.instance.collection('users');

//    return FutureBuilder<DocumentSnapshot>(
//      future: users.doc(documentId).get(),
//  builder:
//          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

//        if (snapshot.hasError) {
//          return Text("Something went wrong");
//        }else

//        if (snapshot.hasData && !snapshot.data.exists) {
//          return Text("Document does not exist");
//        }else

//        if (snapshot.connectionState == ConnectionState.done) {
//          Map<String, dynamic> data = snapshot.data.data();
//          return Text("Username: ${data['name']} ${data['email']}");
//        }else
//          return Text("loading");
//      },
//    );
//  }
//}