import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductButton extends StatefulWidget {
  ProductButton({
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

  @override
  ProductButtonState createState() => ProductButtonState();
}

class ProductButtonState extends State<ProductButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(27),
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
        color: widget.ingredientColor[widget.index.toInt()],
        child: Text(
          widget.ingredientName[widget.index.toInt()],
          style: TextStyle(fontSize: 30.0),
        ),
        onPressed: () {
          widget.additem(widget.ingredientName[widget.index]);
          count += 1;
          final snackBar = SnackBar(
            content: Text(
                widget.ingredientName[widget.index.toInt()] + 'を追加しました。合計：$count'),
            backgroundColor: Colors.orange[300],
            action: SnackBarAction(
              label: '閉じる',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );
          widget.scaffoldKey.currentState.showSnackBar(snackBar);
        },
      ),
    );
  }
}
