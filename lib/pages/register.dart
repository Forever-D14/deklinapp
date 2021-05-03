import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:deklinapp/pages/auth_service.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController(); 
  final pdController = TextEditingController(); 
  final confirmController = TextEditingController();
  
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    pdController.dispose();
    confirmController.dispose();
    super.dispose();
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            //contenedor de la imagen
            Container(
              child: Image.asset("assets/logo_DeklinAPP.png",height: 150,width: 150,),
              padding: EdgeInsets.only(bottom: 15, top: 15),
            ),
            //contenedor 1er text field

            //email
            Container(
              child: TextField(
                controller: emailController,
                enabled: true,
                obscureText: false,
                cursorColor: Colors.redAccent[700],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email:',fillColor: Colors.amber
                )
              ),
              padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
            ),
            //password
            Container(
              child: TextField(
                controller: pdController,
                enabled: true,
                obscureText: true,
                cursorColor: Colors.redAccent[700],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password:',fillColor: Colors.amber
                )
              ),
              padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
            ),
            
            //confirm pass
            Container(
              child: TextField(
                controller: confirmController,
                enabled: true,
                obscureText: true,
                cursorColor: Colors.redAccent[700],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Confirm:',fillColor: Colors.amber
                )
              ),
              padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
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
                          child: Text("Cancel"),
                          onPressed: () {
                            Navigator.pop(context);
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
                          child: Text("Submit"),
                          onPressed: () async {
                            AuthService auth = AuthService();
                            UserCredential credential;
                            if(pdController.text == confirmController.text){
                              credential = await auth.register(emailController.text, pdController.text);
                            }
                            if(credential != null)
                              Navigator.pop(context);
                            else{
                              showDialog(
                                context: context,
                                builder: (context){
                                  return AlertDialog(
                                    content:Text("Las contraseñas no coinciden"),
                                  );
                                },
                              );
                            }



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
    );
  }
}