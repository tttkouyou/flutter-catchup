import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'productButton.dart';

class PurchasePlanButton extends StatefulWidget {
  PurchasePlanButton({
    Key key,
    this.scaffoldKey,
    this.index,
  }) : super(key: key);

  final scaffoldKey;
  final index;

  @override
  PurchasePlanButtonsState createState() => PurchasePlanButtonsState();
}

class PurchasePlanButtonsState extends State<PurchasePlanButton> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 83.0,
      height: 83.0,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.orange[300],
        child: Text("購入予定"),
        onPressed: () {
          final snackBar = SnackBar(
            content: Text('aiueo'),
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
