import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/components/list.dart';

class ThirdPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new ThirdPageState();
  }
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Page 3'),
      ),
      body: new Container(
        child: new List(),
      ),
    ) ;
  }

}