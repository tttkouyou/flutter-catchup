import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProductButton extends StatefulWidget {
  ProductButton({
    Key key,
    this.scaffoldKey,
    this.index,
  }) : super(key: key);

  final scaffoldKey;
  final index;

  @override
  ProductButtonState createState() => ProductButtonState();
}

class ProductButtonState extends State<ProductButton> {
  int count = 0;
  List<String> ingredientName = [
    '卵','肉','魚'];
  List<Color> ingredientColor = [
    Colors.yellow[500],
    Colors.red[500],
    Colors.blue[500]
  ];
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 83.0,
      height: 83.0,
      child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.all(27),
          color: ingredientColor[widget.index.toInt()],
          child: Text(ingredientName[widget.index.toInt()],
            style: TextStyle(fontSize: 50.0),
          ),
          onPressed: () {
            count += 1;
            final snackBar = SnackBar(
              content: Text(ingredientName[widget.index.toInt()] + 'を追加しました。合計：$count'),
              backgroundColor: Colors.orange[300],
              action: SnackBarAction(
                label: '閉じる',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );
            widget.scaffoldKey.currentState.showSnackBar(snackBar);
          }),
    );
  }
}
