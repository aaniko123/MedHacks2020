import 'package:flutter/material.dart';
import 'package:flutter_app/screens/Drugs/drug.dart';
import 'package:flutter_app/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange[50],
        appBar: AppBar(
          title: Text('Med Tracker Home'),
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
            //color: Colors.white,
            padding: EdgeInsets.fromLTRB(5,5,5,0),
            height: 220,
            width: double.maxFinite,
              child: Padding(
              padding: EdgeInsets.all(7),
                  child: RaisedButton(
                   color: Colors.white,
                   child: Text('Tylenol',
                    style: TextStyle(
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Open Sans',
                    fontSize: 30),),
              onPressed: () async => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Drug()),
                  )
            )
        )
      ),

    );

  }
}