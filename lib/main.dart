import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './eggButtons.dart';
import './meatButton.dart';
import './fishButton.dart';
import './purchasePlanButton.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> purchasePlanList = [];
  List<Widget> typeButtons = [
    EggButtons(scaffoldKey: scaffoldKey,),
    MeatButtons(scaffoldKey: scaffoldKey,),
    FishButtons(scaffoldKey: scaffoldKey,),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        body:
        GridView.count(
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
