import 'package:flutter/material.dart';

// class loginPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context){
//     return Scaffold(
//       body: Center(
//         child: ListView(
          
//           children: <Widget>[
//           Container(
//             child:Image.asset("assets/logo_DeklinAPP.png",height: 150,width: 150,),
//             padding: EdgeInsets.only(bottom: 50,top: 60),
//           ),
          
//           Container(
//             child: TextField(
//               enabled: true,
//               obscureText: false,
//               cursorColor: Colors.redAccent[700],
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Username:',fillColor: Colors.amber
//               )
//             ),
//             padding: EdgeInsets.only(bottom: 20,right: 20,left: 20),
//           ),
          
//           Container(
//             child: TextField(
//               enabled: true,
//               obscureText: true,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 labelText: 'Password:', fillColor: Colors.amber
//               ),
//                 cursorColor: Colors.redAccent[700],
//             ),
//             padding: EdgeInsets.only(bottom: 15,right: 20,left: 20),
//           ),

//           Container(
//             child: Row(
              
//               children: <Widget>[
//                 Container(
//                   child: Padding(
//                           padding: EdgeInsets.only(left: 0.0, right: 0.0),
//                           child: RaisedButton(
//                           textColor: Colors.amber,
//                           color: Colors.white70,
//                           child: Text("Registrarse"),
//                           onPressed: () {},
//                           shape: new RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(30.0),
//                            ),
//                           ),  
//                     ),
//                   padding: EdgeInsets.only(right: 0,left: 30),
//                 ),

//                 Container(
//                   child: Padding(
//                           padding: EdgeInsets.only(left: 100.0, right: 0.0),
//                           child: RaisedButton(
//                           textColor: Colors.white,
//                           color: Colors.amber,
//                           child: Text("Log-In"),
//                           onPressed: () {},
//                           shape: new RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(30.0),
//                            ),
//                           ),  
//                     )
//                 )
//               ]
//             ),
//           ),

//         ],
//         ),
//       ),
//        // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }

// }

  class loginPage extends StatefulWidget {
    @override
    _loginPageState createState() => _loginPageState();
  }



class _loginPageState extends State<loginPage> {
    final usernameController = TextEditingController();
    final pdController = TextEditingController();

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
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  content:Text(usernameController.text + "--------------" + pdController.text),
                                );
                              },
                            );
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