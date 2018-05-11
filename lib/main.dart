import 'package:flutter/material.dart';

void main() => runApp(new MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      home:  new Scaffold(
        appBar:  new AppBar(
          title: new Text('Flutter Demo合集'),
        ),

        body: new Center(child: new Text('test')),
      ),
    );
  }

}
