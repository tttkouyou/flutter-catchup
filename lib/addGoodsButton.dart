import 'package:flutter/material.dart';

import './AddGoodsButtonPage.dart';

class AddGoodsButton extends StatelessWidget {
  AddGoodsButton({
    Key key,
    this.ingredientName,
    this.ingredientColor,
    this.addButton,
    this.addButtonColor,
  });

  final List<String> ingredientName;
  final List<Color> ingredientColor;
  final addButton;
  final addButtonColor;

  void addGoodsButtonPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddGoodsButtonPage(
          ingredientName: ingredientName,
          ingredientColor: ingredientColor,
          addButton: addButton,
          addButtonColor: addButtonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.add_circle_outline),
      title: Text(
        '商品ボタンを追加',
        style: TextStyle(
          color: Colors.orange[500],
          fontSize: 20,
        ),
      ),
      onTap: () => addGoodsButtonPage(context),
    );
  }
}
