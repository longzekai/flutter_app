import 'package:flutter/material.dart';

class TabPage1 extends StatefulWidget {

  const TabPage1({Key key,this.data}) :super(key: key) ;
  final String data ;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyTabbedPageState();
  }
}

class _MyTabbedPageState extends State<TabPage1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Center(
            child: new Text(widget.data),
          )
    ) ;
//    return new DefaultTabController(
//        length: 3,
//        child: new Scaffold(
//          appBar: new AppBar(
//            backgroundColor: Colors.lightBlue,
////            title: new TabBar(
////              tabs: [
////                new Tab(icon: new Icon(Icons.directions_car)),
////                new Tab(icon: new Icon(Icons.directions_transit)),
////                new Tab(icon: new Icon(Icons.directions_bike)),
////              ],
////              indicatorColor: Colors.white,
////            ),
//          ),
//          body: new Center(
//            child: new Text(widget.data),
//          )
//        ));
  }
}