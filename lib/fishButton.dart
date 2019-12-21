import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var fishCount = 0;

class FishButtons extends StatefulWidget {
  FishButtons({Key key, this.scaffoldKey}) : super(key: key);

  final scaffoldKey;

  @override
  FishButtonsState createState() => FishButtonsState();
}

class FishButtonsState extends State<FishButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 83.0,
        height: 83.0,
        child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.all(27),
          color: Colors.blue[500],
          child: Text("魚"),
          onPressed: () {
            fishCount += 1;
            final snackBar = SnackBar(
              content: Text('「魚」を追加しました。合計：$fishCount'),
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
        ));
  }
}
