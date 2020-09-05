import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final AuthService _auth = AuthService();

  Future<void> _signInAnonymously() async {
    try {
      dynamic result = await _auth.signInAnon();
      if(result == null){
        print("error signing in");
      }else{
        print("signed in anon");
        print(result.uid);
      }
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[400],
        elevation: 0.0,
        title: Text('Med Tracker Sign In'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign In Anonymously'),
          onPressed: _signInAnonymously,
        ),
      ),
    );
  }
}
