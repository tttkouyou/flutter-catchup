import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var eggCount = 0;

class EggButtons extends StatefulWidget {
  EggButtons({Key key, this.scaffoldKey}) : super(key: key);

  final scaffoldKey;

  @override
  EggButtonsState createState() => EggButtonsState();
}

class EggButtonsState extends State<EggButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 83.0,
      height: 83.0,
      child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.all(27),
          color: Colors.yellow[500],
          child: Text("卵"),
          onPressed: () {
            eggCount += 1;
            final snackBar = SnackBar(
              content: Text('「卵」を追加しました。合計：$eggCount'),
              backgroundColor: Colors.orange[300],
              action: SnackBarAction(
                label: '閉じる',
                onPressed: () {
                  // Some code to undo the change.
                },
              ),
            );
            widget.scaffoldKey.currentState.showSnackBar(snackBar);
          }
      ),
    );
  }
}
