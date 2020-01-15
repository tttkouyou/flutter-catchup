import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SelectColor extends StatelessWidget {
  final Map colors = {
    '赤': Colors.red[500],
    '青': Colors.blue[500],
    '黄色': Colors.yellow[500],
    '橙色': Colors.orange,
    '鼠色': Colors.grey,
    '黒': Colors.black,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('食品ボタンの背景色を設定'),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        itemCount: colors.length,
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
              color: colors.values.elementAt(index),
              child: Text(
                colors.keys.elementAt(index),
                style: TextStyle(fontSize: 25.0),
              ),
              onPressed: () {
                Navigator.pop(context, colors.values.elementAt(index));
              },
            ),
          );
        },
      ),
    );
  }
}
