import 'package:flutter/material.dart';
import 'package:flutter_app/services/auth.dart';

class Drug extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text('Med Tracker Drug'),
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
              onPressed: () async {
                await _auth.signOut();
              },
              icon: Icon(Icons.person),
              label: Text('logout'))
        ],
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50),
          child: RaisedButton(
              child: Text('<'),
              onPressed: () async => Navigator.pop(context)
          )
      )

  );
  }
}
