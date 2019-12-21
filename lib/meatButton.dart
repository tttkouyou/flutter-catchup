import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var meatCount = 0;

class MeatButtons extends StatefulWidget {
  MeatButtons({Key key, this.scaffoldKey}) : super(key:key);

  final scaffoldKey;


  @override
  MeatButtonsState createState() => MeatButtonsState();
}

class MeatButtonsState extends State<MeatButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 83.0,
        height: 83.0,
        child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.all(27),
          color: Colors.red[500],
          child: Text("肉"),
          onPressed: () {
            meatCount += 1;
            final snackBar = SnackBar(
              content: Text('「卵」を追加しました。合計：$meatCount'),
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
