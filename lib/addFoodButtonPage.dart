import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import './selectColor.dart';

class AddFoodButtonPage extends StatefulWidget {
  AddFoodButtonPage({
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

  @override
  AddFoodButtonPageState createState() => AddFoodButtonPageState();
}

class AddFoodButtonPageState extends State<AddFoodButtonPage> {
  final _addName = TextEditingController();

  selectColor(BuildContext context, addButtonColor) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SelectColor(addButtonColor: addButtonColor),
      ),
    ).then((result) {
    widget.addButtonColor(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食品ボタンを追加'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(50.0),
            child: TextField(
              controller: _addName,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.orange,
                backgroundColor: Colors.white,
              ),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: '食品名の入力',
                labelStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.orange,
                ),
                hintText: '食品名を入力してください',
                hintStyle: TextStyle(
                  backgroundColor: Colors.white,
                  color: Colors.orange,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            child: RaisedButton(
              child: Text('背景色の変更',style: TextStyle(
                color: Colors.white,
              )),
              color: Colors.orange,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () => selectColor(context,widget.addButtonColor),
            ),
          ),
          RaisedButton(
            onPressed: () {
              widget.addButton(_addName.text);
              Navigator.of(context).pop();
            },
            child: Text('追加'),
          ),
        ],
      ),
    );
  }
}
