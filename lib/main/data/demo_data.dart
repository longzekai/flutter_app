
import 'package:flutter/material.dart';
import 'package:flutter_app/main/list/demo_list.dart';
import 'package:flutter_app/main/model/demo_data.dart';

class DemoData extends StatelessWidget {
  _buildDemoList() {
    return <DemoDataModel>[
      const DemoDataModel(
        title: '计数器示例',
          id: 0
      ),
      const DemoDataModel(
          title: '列表收藏',
          id: 1
      ),
      const DemoDataModel(
          title: '购物车',
          id: 2
      ),
      const DemoDataModel(
          title: '滑动和抽屉',
          id: 3
      ),
      const DemoDataModel(
          title: '网络加载和聊天界面',
          id: 4
      )
    ] ;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new DemoList(_buildDemoList()),
    ) ;
  }


}