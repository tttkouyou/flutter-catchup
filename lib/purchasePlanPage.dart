import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_catchup/purchasePlanButton.dart';

import './productButton.dart';

class ArticleList extends StatelessWidget {
  ArticleList({this.purchasePlanList});
  final List<String> purchasePlanList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('購入予定'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: purchasePlanList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.grey[300],
            child: ListTile(
              title: Text(purchasePlanList[index]),
            ),
          );
        },
      ),
    );
  }
}
