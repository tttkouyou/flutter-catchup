import 'package:flutter/material.dart';

import './productButton.dart';
import './purchasePlanButton.dart';
import './addFoodButton.dart';

class TopPage extends StatelessWidget {
  TopPage({
    Key key,
    this.purchasePlanList,
    this.additem,
    this.scaffoldKey,
    this.ingredientName,
    this.ingredientColor,
  });
  final List<String> purchasePlanList;
  final additem;
  final scaffoldKey;
  final List<String> ingredientName;
  final List<Color> ingredientColor;

  int listCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('お買い物サポート'),
        backgroundColor: Colors.orange,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'メニュー',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
            AddFoodButton(
              listCount: listCount,
              ingredientName: ingredientName,
              ingredientColor: ingredientColor,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                '設定',
                style: TextStyle(
                  color: Colors.orange[500],
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton:
          PurchasePlanButton(purchasePlanList: purchasePlanList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: GridView.builder(
        itemCount: listCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return ProductButton(
            scaffoldKey: scaffoldKey,
            index: index,
            purchasePlanList: purchasePlanList,
            additem: additem,
            listCount: listCount,
            ingredientName: ingredientName,
            ingredientColor: ingredientColor,
          );
        },
      ),
    );
  }
}
