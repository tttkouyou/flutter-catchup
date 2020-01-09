import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectColor extends StatelessWidget {

  List<Color> colorCode = [
    Colors.red[500],
    Colors.blue[500],
    Colors.yellow[500],
    Colors.orange,
    Colors.grey,
    Colors.black,
  ];
  List<String> colorName = [
    '赤',
    '青',
    '黄色',
    '橙色',
    '鼠色',
    '黒',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食品ボタンの背景色を設定'),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        itemCount: colorCode.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        ),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              textColor: Colors.white,
              color: colorCode[index],
              child: Text(
                colorName[index],
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                Navigator.pop(context,colorCode[index]);
              },
            ),
          );
        },
      ),
    );
  }
}
