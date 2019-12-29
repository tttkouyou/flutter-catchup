import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFoodButtonPage extends StatefulWidget {
  AddFoodButtonPage({
    Key key,
    this.listCount,
    this.ingredientName,
    this.ingredientColor,
  });

  final listCount;
  final List<String>ingredientName;
  final List<Color>ingredientColor;

  @override
  AddFoodButtonPageState createState() => AddFoodButtonPageState();
}

class AddFoodButtonPageState extends State<AddFoodButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食品ボタンを追加'),
        backgroundColor: Colors.orange,
      ),
      // body:
    );
  }
}
