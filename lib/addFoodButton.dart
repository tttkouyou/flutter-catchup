import 'package:flutter/material.dart';

import './addFoodButtonPage.dart';

class AddFoodButton extends StatelessWidget {
  AddFoodButton({
    Key key,
    this.listCount,
    this.ingredientName,
    this.ingredientColor,
  });

  final listCount;
  final List<String> ingredientName;
  final List<Color> ingredientColor;

  void addFoodButtonPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddFoodButtonPage(
          listCount:listCount,
          ingredientName:ingredientName,
          ingredientColor: ingredientColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.add_circle_outline),
      title: Text(
        '食品ボタンを追加',
        style: TextStyle(
          color: Colors.orange[500],
          fontSize: 20,
        ),
      ),
      onTap: () => addFoodButtonPage(context),
    );
  }
}
