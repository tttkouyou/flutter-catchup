import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './eggButtons.dart';
import './meatButton.dart';
import './fishButton.dart';
import './purchasePlanButton.dart';

void main() {
  runApp(MyApp());
}

final _scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> purchasePlanList = [];
  List<Widget> typeButtons = [EggButtons(), MeatButtons(), FishButtons()];
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(3, (index) {
            return Container(
              child: typeButtons[index],
            );
          }),
        ),
      ),
    );
  }
}
