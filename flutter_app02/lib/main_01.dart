import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //自定義方法
  List<Widget> _getData() {
    List<Widget> list = new List();
    for (var i = 0; i < 20; i++) {
      list.add(ListTile(
        title: Text("我是第$i個title"),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          // children: <Widget>[
          //   ListTile(
          //     title: Text("我是一個title"),
          //   ),
          //   ListTile(
          //     title: Text("我是一個title"),
          //   ),
          //   ListTile(
          //     title: Text("我是一個title"),
          //   ),
          //   ListTile(
          //     title: Text("我是一個title"),
          //   ),
          // ],
          children: this._getData(),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
