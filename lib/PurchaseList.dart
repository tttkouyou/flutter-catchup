import 'package:flutter/material.dart';

class PurchaseList extends StatelessWidget {
  PurchaseList({
    this.purchasePlanList,
  });
  final List<String> purchasePlanList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('購入予定'),
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
