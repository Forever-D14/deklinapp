import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:deklinapp/pages/register.dart';
import 'package:deklinapp/pages/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deklinapp/pages/auth_service.dart';
import 'package:deklinapp/pages/score.dart';

class Exercise extends StatefulWidget{
  final int index;
  final int puntuacion;


  const Exercise({Key key, this.index ,this.puntuacion}):super(key:key);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise>{

  @override
  Widget build(BuildContext context) {
    final String id = "#"+widget.index.toString();
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
            Container(child: Text("Ejercicios",style: TextStyle(fontSize: 45),),padding: EdgeInsets.only(top: 50),),
            Container(child: Text("Übungen",style: TextStyle(fontSize: 35,color: Colors.redAccent[700]),),padding: EdgeInsets.only(top: 10),),
            Container(child: Text("Seleccione la opción correcta", style: TextStyle(fontSize:25 ,color: Colors.amber),),padding: EdgeInsets.only(top: 40)),
            GetQuestion(id,widget.index,widget.puntuacion)
          ],
        ),
      ),
    );
  }

}

class GetQuestion extends StatelessWidget {
  final String documentId;
  final int index;
  final int score;
  GetQuestion(this.documentId,this.index,this.score);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('preguntas');

    return FutureBuilder<DocumentSnapshot>(
      future: users.doc(documentId).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {

        if (snapshot.hasError) {
          return Text("Something went wrong");
        }else

        if (snapshot.hasData && !snapshot.data.exists) {
          return Text("Document does not exist");
        }else

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data = snapshot.data.data();
          return Question("${data['Opcion1']}", "${data['Opcion2']}", "${data['Opcion3']}", "${data['Respuesta']}", "${data['Pregunta']}",this.index,this.score);
        }else
          return Text("loading");
      },
    );
  }
}
//return Text("Username: ${data['name']} ${data['email']}");

class Question extends StatelessWidget{
  String widgetA;
  String widgetB;
  String widgetC;
  String widgetYES;
  String pregunta;
  int indx, punt;

  Question(this.widgetA,this.widgetB,this.widgetC,this.widgetYES,this.pregunta,this.indx,this.punt);

  @override
  Widget build(BuildContext context){
    final randomOrderedWidgets = [
      Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0,top: 10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.amber,
              child: Text(widgetA),
              onPressed: () {
                if(indx<10)
                Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(index: indx+1,puntuacion: punt,)));
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScore(this.punt)));
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
      ),
      Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0,top:10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.amber,
              child: Text(widgetB),
              onPressed: () {
                if(indx<10)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(index: indx+1,puntuacion: punt,)));
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScore(this.punt)));
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
      ),
      Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0,top: 10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.amber,
              child: Text(widgetC),
              onPressed: () {
                if(indx<10)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(index: indx+1,puntuacion: punt,)));
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScore(this.punt)));
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
      ),
      Container(
          child: Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0,top:10),
            child: RaisedButton(
              textColor: Colors.white,
              color: Colors.amber,
              child: Text(widgetYES),
              onPressed: () {
                if(indx<10)
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Exercise(index: indx+1,puntuacion: punt+1,)));
                else
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FinalScore(this.punt)));
              },
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
          )
      )
    ];
    randomOrderedWidgets.shuffle();
    
    return Column(
      children: [
        Container(child: Text(pregunta, style:TextStyle(fontSize: 25) ,),padding: EdgeInsets.only(top: 20,left: 20),),
      ]..addAll(randomOrderedWidgets),
    );
  }


}