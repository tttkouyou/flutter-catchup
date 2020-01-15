import 'package:flutter/material.dart';

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
    setState(
      () {
        purchasePlanList.add(item);
      },
    );
  }

  addButton(String item) {
    setState(
      () {
        ingredientName.add(item);
      },
    );
  }

  addButtonColor(item) {
    setState(
      () {
        ingredientColor.add(item);
      },
    );
  }

  List<String> ingredientName = [
    '卵',
    '肉',
    '魚',
  ];
  List<Color> ingredientColor = [
    Colors.yellow[500],
    Colors.red[500],
    Colors.blue[500]
  ];

  @override
  Widget build(BuildContext context) {
    return TopPage(
      purchasePlanList: purchasePlanList,
      additem: additem,
      scaffoldKey: scaffoldKey,
      ingredientName: ingredientName,
      ingredientColor: ingredientColor,
      addButton: addButton,
      addButtonColor: addButtonColor,
    );
  }
}
