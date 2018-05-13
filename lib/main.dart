import 'package:flutter/material.dart';
import 'package:flutter_app/main/data/demo_data.dart';

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

        body: new DemoData(),
      ),
    );
  }

}
