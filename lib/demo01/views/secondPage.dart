import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SecondPageState();
  }
}

class SecondPageState extends State<SecondPage> with TickerProviderStateMixin {
  final List<ChatMessage> _messages = <ChatMessage>[];

  final TextEditingController _textController =
      new TextEditingController(); //聊天窗口的文本输入控件

  bool _isComposing = false;

  //定义发送文本事件的处理函数
  void _handleSubmitted(String text) {
    _textController.clear(); //清空输入框
    setState(() {
      _isComposing = false;
    });
    ChatMessage message = new ChatMessage(
      //定义新的消息记录控件对象
      text: text,
      animationController: new AnimationController(
        duration: new Duration(milliseconds: 700),
        vsync: this,
      ),
    );
    //状态变更，向聊天记录中插入新记录
    setState(() {
      _messages.insert(0, message); //插入新的消息记录
    });
    message.animationController.forward();
  }

  //定义文本输入框控件
  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          //文本输入和发送按钮都在同一行，使用Row控件包裹实现
          child: new Row(children: <Widget>[
            new Flexible(
              child: new TextField(
                //载入文本输入控件
                controller: _textController,
                onChanged: (String text) {
                  setState(() {
                    _isComposing = text.length > 0;
                  });
                },
                onSubmitted: _handleSubmitted,
                //输入框中默认提示文字
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              //发送按钮
              child: new IconButton(
                  //发送按钮图标
                  icon: new Icon(Icons.send),
                  //触发发送消息事件执行的函数_handleSubmitted
                  onPressed: _isComposing
                      ? () => _handleSubmitted(_textController.text)
                      : null),
            ),
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    //页面脚手架
    return new Scaffold(
      //页面标题
      appBar: new AppBar(title: new Text("Chat")),
      //Column使消息记录和消息输入框垂直排列
      body: new Column(children: <Widget>[
        //子控件可柔性填充，如果下方弹出输入框，使消息记录列表可适当缩小高度
        new Flexible(
            //可滚动显示的消息列表
            child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          //反转排序，列表信息从下至上排列
          reverse: true,
          //插入聊天信息控件
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )
        ),
        new Divider(height: 1.0), //聊天记录和输入框之间的分隔
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(), //页面下方的文本输入控件
        ),
      ]),
    );
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }
}

const String _name = "Danny";

//单条聊天信息控件
class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.animationController});

  final String text;
  final AnimationController animationController;

  @override
  Widget build(BuildContext context) {
    return new SizeTransition(
        //new  用SizeTransition动效控件包裹整个控件，定义从小变大的动画效果
        sizeFactor: new CurvedAnimation(
            //new  CurvedAnimation定义动画播放的时间曲线
            parent: animationController,
            curve: Curves.easeOut),
        //new  指定曲线类型
        axisAlignment: 0.0,
        //new  对齐
        child: new Container(
          //modified  Container控件被包裹到SizeTransition中
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                margin: const EdgeInsets.only(right: 16.0),
                child: new CircleAvatar(child: new Text(_name[0])),
              ),
              new Expanded(
                child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(_name, style: Theme.of(context).textTheme.subhead),
                  new Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: new Text(text),
                  ),
                ],
              ),)

            ],
          ),
        ) //new
        );
  }
}
