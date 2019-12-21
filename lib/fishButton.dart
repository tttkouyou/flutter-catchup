import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var fishCount = 0;

final _scaffoldKey = GlobalKey<ScaffoldState>();

class FishButtons extends StatefulWidget {
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
            _scaffoldKey.currentState
              ..removeCurrentSnackBar()
              ..showSnackBar(snackBar);
          },
        ));
  }
}
