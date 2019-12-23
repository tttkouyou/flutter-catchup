import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'productButton.dart';
import './purchasePlanPage.dart';

class PurchasePlanButton extends StatelessWidget {
  PurchasePlanButton({this.purchasePlanList});
  final purchasePlanList;

  void purchasePage(BuildContext context, _purchasePlanList) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (context) =>
              ArticleList(purchasePlanList: _purchasePlanList)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: FloatingActionButton.extended(
        onPressed: () => purchasePage(context, purchasePlanList),
        label: Text('購入予定'),
        backgroundColor: Colors.orange[300],
      ),
    );
  }
}
