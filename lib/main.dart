import 'package:flutter/material.dart';

import './articleList.dart';
import './topPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> purchasePlanList = [];

  additem(String item) {
    setState(() {
      purchasePlanList.add(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: TopPage(
        purchasePlanList: purchasePlanList,
        additem: additem,
        scaffoldKey: scaffoldKey,
      ),
      routes: {
        '/ArticleList': (BuildContext context) => ArticleList(),
      },
    );
  }
}
