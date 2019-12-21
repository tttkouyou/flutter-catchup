import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var meatCount = 0;

final _scaffoldKey = GlobalKey<ScaffoldState>();

class MeatButtons extends StatefulWidget {
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
            _scaffoldKey.currentState
              ..removeCurrentSnackBar()
              ..showSnackBar(snackBar);
          },
        ),
        );
  }
}
