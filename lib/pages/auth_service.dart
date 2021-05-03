import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final _auth = FirebaseAuth.instance;

  Future<User> signIn(String email, String password) async {
    User user;
    try{
      user = (await _auth.signInWithEmailAndPassword(email: email, password: password)).user;
    }catch(e){
      print(e.toString());
    }
    return user;
  }

  Future<UserCredential> register (String email, String password) async{
      return _auth.createUserWithEmailAndPassword(email: email, password: password);

  }

}