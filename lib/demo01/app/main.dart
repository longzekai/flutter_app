import 'package:flutter/material.dart';
import 'demo01/views/firstPage.dart';

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
//      controller: controller,
//      body: new TabBarView(
//          children: <Widget>[
//            new firstPage(),
//            new SecondPage(),
//            new ThirdPage()
//          ]
//      ),
    ) ;
  }


}