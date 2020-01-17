import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Goods extends StatelessWidget {
  Goods({
    Key key,
    this.scaffoldKey,
    this.index,
    this.purchasePlanList,
    this.additem,
    this.listCount,
    this.ingredientName,
    this.ingredientColor,
  }) : super(key: key);

  final scaffoldKey;
  final index;
  final purchasePlanList;
  final additem;
  final listCount;
  final List<String> ingredientName;
  final List<Color> ingredientColor;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(27),
      width: 83.0,
      height: 83.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        textColor: Colors.white,
        color: ingredientColor[index.toInt()],
        child: Text(
          ingredientName[index.toInt()],
          style: TextStyle(fontSize: 30.0),
        ),
        onPressed: () {
          additem(ingredientName[index]);
          count += 1;
          final snackBar = SnackBar(
            content: Text(ingredientName[index.toInt()] + 'を追加しました。合計：$count'),
            backgroundColor: Colors.orange[300],
            action: SnackBarAction(
              label: '閉じる',
              textColor: Colors.white,
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          scaffoldKey.currentState.showSnackBar(snackBar);
        },
      ),
    );
  }
}
