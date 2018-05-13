import 'package:flutter/material.dart';
import 'package:flutter_app/demo01/app/demo01.dart';
import 'package:flutter_app/demo02/pages/home_page.dart';
import 'package:flutter_app/main/model/demo_data.dart';
import 'package:flutter_app/official/ShoppingExample.dart';
import 'package:flutter_app/official/counter.dart';
import 'package:flutter_app/official/randomName.dart';

class DemoDataListItem extends StatelessWidget {
  final DemoDataModel _demoDataModel;

  DemoDataListItem(this._demoDataModel);

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      title: new Text(_demoDataModel.title),
      leading: new CircleAvatar(
          child: new Text(((_demoDataModel.id + 1).toString()))),
      trailing: new Icon(Icons.arrow_right),
      onTap: () => Navigator.of(context).push(new PageRouteBuilder(
          opaque: false,
          pageBuilder: (BuildContext context, _, __) {
            switch (_demoDataModel.id) {
              case 0:
                return new Counter();
              case 1:
                return new RandomWords();
              case 2:
                return new ShoppingList(
                  products: <Product>[
                    new Product(name: 'Eggs'),
                    new Product(name: 'Flour'),
                    new Product(name: 'Chocolate chips'),
                  ],
                );
              case 3:
                return new HomePage();
              case 4:
                return new MyHomePage();
            }
          },
          transitionsBuilder:
              (_, Animation<double> animation, __, Widget child) {
            return new FadeTransition(
              opacity: animation,
              child: new SlideTransition(
                position: new Tween<Offset>(
                  begin: const Offset(0.0, 1.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              ),
            );
          })),
    );
  }
}
