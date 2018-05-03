import 'package:flutter/material.dart';

void main() {
//  runApp(
//    new Center(
//      child: new Text(
//        'Hello World!',
//        textDirection: TextDirection.ltr,
//      ),
//    )
//  );
//    runApp(new MaterialApp(
//      title: 'My app',
//      home: new MyScaffold(),
//    )) ;
    runApp(new MaterialApp(
      title: 'Flutter Tutorial',
      home: new TutorialHome(),
    ));
}

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null),
        title: new Text('Example title'),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello wordl....'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add',
          child: new Icon(Icons.add),
          onPressed: null),
    ) ;
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title}) ;

  final Widget title ;
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 80.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: new BoxDecoration(color: Colors.blue[500]),
      child: new Row(
        children: <Widget>[
          new IconButton(
              icon: new Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: null),
          new Expanded(child: title),
          new IconButton(
              icon: new Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null),
        ],
      ),
    ) ;
  }

}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      child: new Column(
        children: <Widget>[
          new MyAppBar(
            title: new Text(
                'Example title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          new Expanded(
              child: new Center(
                child: new Text('Hello World!'),
              )),
        ],
      ),
    ) ;
  }

}