import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // sign in anon 

  Future signInAnon() async{
    try {
     UserCredential result  = await _auth.signInAnonymously();
     User? user = result.user;
     return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
