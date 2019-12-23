import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './productButton.dart';
import './purchasePlanButton.dart';

void main() {
  runApp(MyApp());
}

final scaffoldKey = GlobalKey<ScaffoldState>();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
      home: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        floatingActionButton:
            PurchasePlanButton(purchasePlanList: purchasePlanList),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(
            3,
            (index) {
              return ProductButton(
                scaffoldKey: scaffoldKey,
                index: index,
                purchasePlanList: purchasePlanList,
                additem: additem,
              );
            },
          ),
        ),
      ),
    );
  }
}
