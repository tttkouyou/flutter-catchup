import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './SelectColor.dart';

class AddGoodsButtonForm extends StatelessWidget {
  AddGoodsButtonForm({
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

  final _addName = TextEditingController();

  selectColor(BuildContext context, addButtonColor) {
    Navigator.of(context)
        .push(
      MaterialPageRoute(
        builder: (context) => SelectColor(),
      ),
    )
        .then((result) {
      addButtonColor(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('商品ボタンを追加'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: _addName,
              style: const TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
                backgroundColor: Colors.white,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: '商品名の入力',
                labelStyle: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.orange,
                ),
                hintText: '商品名を入力してください',
                hintStyle: const TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 30.0),
            child: RaisedButton(
              child: const Text('背景色の変更',
                  style: const TextStyle(
                    color: Colors.white,
                  )),
              color: Colors.orange,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () => selectColor(context, addButtonColor),
            ),
          ),
          RaisedButton(
            onPressed: () {
              addButton(_addName.text);
              Navigator.of(context).pop();
            },
            child: const Text('追加'),
          ),
        ],
      ),
    );
  }
}
