import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/components/list.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 2'),
      ),
      body: new Container(
        child: new List(),
      ),
    ) ;
  }

}