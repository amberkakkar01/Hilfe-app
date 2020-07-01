import 'package:flutter/material.dart';
import 'package:validators/validators.dart' as validator;
import 'package:hilfe/screens/home_material.dart';
import 'package:hilfe/healthfacts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hilfe'),
          backgroundColor: Colors.blueAccent,
        ),
        body: page(),
      ),
    );
  }
}

// ignore: camel_case_types
class page extends StatefulWidget {
  @override
  _page createState() => _page();
}

// ignore: camel_case_types
class _page extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset(
                'images/Heathf.png',
                height: 100,
                width: 100,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HealthFacts(),
                  ),
                );
              },
            ),
          ),
          Expanded(
              child: FlatButton(
            child: Image.asset(
              'images/connectd.png',
              height: 100,
              width: 100,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormScreen(),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}

class FormScreen extends StatefulWidget {
  @override
  _FormScreenState createState() => new _FormScreenState();
}

class _FormScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: 'Forms Demo',),
      home: HomeMaterial(),
      // home: HomeCupertino(),
    );
  }
}
