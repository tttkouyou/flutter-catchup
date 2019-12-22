import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'productButton.dart';
import './purchasePlanPage.dart';

class PurchasePlanButton extends StatefulWidget {
  PurchasePlanButton({
    Key key,
    this.scaffoldKey,
  }) : super(key: key);

  final scaffoldKey;

  @override
  PurchasePlanButtonState createState() => PurchasePlanButtonState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/subpage': (BuildContext context) => new PurchasePlanPage()
      },
    );
  }
}

class PurchasePlanButtonState extends State<PurchasePlanButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 83.0,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.orange[300],
        child: Text("購入予定"),
        onPressed: () => Navigator.of(context)
            .pushNamed('/subpage'),
      ),
    );
  }
}
