import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFoodButtonPage extends StatefulWidget {
  AddFoodButtonPage({
    Key key,
    this.ingredientName,
    this.ingredientColor,
    this.addButton,
  });

  final List<String> ingredientName;
  final List<Color> ingredientColor;
  final addButton;

  @override
  AddFoodButtonPageState createState() => AddFoodButtonPageState();
}

class AddFoodButtonPageState extends State<AddFoodButtonPage> {
  final _addName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食品ボタンを追加'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: <Widget>[
          TextField(
            controller: _addName,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
              backgroundColor: Colors.orange,
            ),
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: '食品名の入力',
              labelStyle: TextStyle(
                backgroundColor: Colors.orange,
                color: Colors.black,
              ),
              hintText: '食品名を入力してください',
              hintStyle: TextStyle(
                backgroundColor: Colors.orange,
                color: Colors.black,
              ),
            ),
          ),
          Text(_addName.text),
          RaisedButton(
            onPressed: () {
              // setState(
              //   () {
              //     widget.ingredientName.add(_addName.text);
              //     widget.ingredientColor.add(Colors.blue);
              //     _addName.clear();
              //     Navigator.of(context).pop();
              //   },]
              Navigator.of(context).pop();
              widget.addButton(_addName.text, Colors.blue);
            },
            child: Text('追加'),
          ),
        ],
      ),
    );
  }
}
