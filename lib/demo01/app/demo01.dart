import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/views/detail.dart';
import 'package:flutter_app/demo01/views/firstPage.dart';
import 'package:flutter_app/demo01/views/secondPage.dart';
import 'package:flutter_app/demo01/views/thirdPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePageState() ;
  }
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  TabController controller ;


  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
  }


  @override
  void dispose() {
    controller.dispose();
    super.dispose() ;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new FirstPage(),
            new SecondPage(),
            new ThirdPage()
          ]
      ),

      bottomNavigationBar: new Material(
        color: Colors.orangeAccent,
        child: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: "List",icon: new Icon(Icons.home)),
            new Tab(text: "Message",icon: new Icon(Icons.message)),
            new Tab(text: "Mine",icon: new Icon(Icons.cloud)),
          ],
        ),
      ),
    ) ;
  }
}

//class MyApp extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    return new MaterialApp(
//      title: 'Demo01',
//      theme: new ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: new MyHomePage(),
//        routes: <String, WidgetBuilder>{
////          '/datail': (BuildContext context) => new Detail()
//        }
//    ) ;
//  }
//}
//
//void main() => runApp(new MyApp()) ;