import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/components/list.dart';

class FirstPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new FirstPageState();
  }
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 1'),
      ),
      body: new Container(
        child: new List(),
      ),
    ) ;
  }

}