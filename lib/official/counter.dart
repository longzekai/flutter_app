import 'package:flutter/material.dart';

//void main() {
////  runApp(
////    new Center(
////      child: new Text(
////        'Hello World!',
////        textDirection: TextDirection.ltr,
////      ),
////    )
////  );
////    runApp(new MaterialApp(
////      title: 'My app',
////      home: new MyScaffold(),
////    )) ;
//  runApp(new MaterialApp(
//    title: 'Flutter Tutorial',
////      home: new TutorialHome(),
////    home: new MyButton(),
//    home: new Counter(),
//  ));
//}

/*
更改 widgets 显示状态

主要相关文章： StatefulWidget, State.setState

到目前为止，我们只使用 stateless widgets。stateless widgets 从它们的父 widgets 接收参数，
它们存储在 final 变量中。
当一个 widget 要求 构建时，它使用这些已存储的值为被创建的 widget 派生新的参数。
 */

class Counter extends StatefulWidget{
//  @override
//  State<StatefulWidget> createState() {
//    // TODO: implement createState
//    return new _CounterState();
//  }
  @override
  createState() => new _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0 ;
  void _increment() {
    setState((){
      _counter++;
    }) ;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    return new Row(
//      children: <Widget>[
//        new RaisedButton(
//            onPressed: _increment,
//          child: new Text('Increment'),
//        ),
//        new Text('Count:$_counter'),
//      ],
//    );
    return new MaterialApp(
      home: new Scaffold(
        appBar:  new AppBar(
          title: new Text('计数器'),
        ),
        body: new Center(
          child: new Row(
            children: <Widget>[
              new CounterIncrementor(onPressed: _increment,),
              new CounterDisplay(count: _counter,)
            ],
          ),
        )
      ),
    ) ;

  }
}

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count}) ;
  final int count ;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Text('Count: $count');
  }

}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed}) ;
  final VoidCallback onPressed ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(
        onPressed: onPressed,
      child: new Text('Increment'),
    );
  }

}

/*手势的处理*/
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return new GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child: new Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: new BoxDecoration(
          borderRadius: new BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: new Center(
          child: new Text('Engage'),
        ),
      ),
    );
  }
}

/*
 * Basic widgets
 */
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
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null)
        ],
      ),
      body: new Center(
        child: new Text('Hello wordl....'),
      ),
      floatingActionButton: new FloatingActionButton(
          tooltip: 'Add', child: new Icon(Icons.add), onPressed: null),
    );
  }
}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

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
              icon: new Icon(Icons.search), tooltip: 'Search', onPressed: null),
        ],
      ),
    );
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
    );
  }
}
