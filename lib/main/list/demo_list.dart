import 'package:flutter/material.dart';
import 'package:flutter_app/main/list/demo_list_item.dart';
import 'package:flutter_app/main/model/demo_data.dart';


class DemoList extends StatelessWidget{
  final List<DemoDataModel> _demoDataModel ;
  DemoList(this._demoDataModel);

  @override
  Widget build(BuildContext context) {
    return new ListView(
        padding: new EdgeInsets.symmetric(vertical: 8.0),
        children: _buildDemoList(),

    ) ;
  }

  List<DemoDataListItem> _buildDemoList(){
    return _demoDataModel
        .map((demoModel) => new DemoDataListItem(demoModel))
        .toList() ;
  }

}


