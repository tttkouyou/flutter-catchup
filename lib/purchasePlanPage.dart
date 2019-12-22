import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_catchup/purchasePlanButton.dart';

class PurchasePlanPage extends StatefulWidget {
  @override
  PurchasePlanPageState createState() => PurchasePlanPageState();
}

class PurchasePlanPageState extends State<PurchasePlanPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'buyer support App',
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(title: Text('購入予定'), backgroundColor: Colors.orange),
        body: Center(child: Text('hello world'),
        ),
        ),
        );
  }
}
