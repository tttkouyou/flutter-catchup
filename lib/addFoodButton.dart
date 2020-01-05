import 'package:flutter/material.dart';

import './addFoodButtonPage.dart';

class AddFoodButton extends StatelessWidget {
  AddFoodButton({
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

  void addFoodButtonPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddFoodButtonPage(
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
