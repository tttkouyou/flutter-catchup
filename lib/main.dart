import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> arrary = [];
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  var eggCount = 0;
  var meatCount = 0;
  var fishCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              //types button
              children: <Widget>[
                ButtonTheme(
                    minWidth: 83.0,
                    height: 83.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      padding: EdgeInsets.all(27),
                      color: Colors.yellow[500],
                      child: Text("卵"),
                      onPressed: () {
                        setState(() => eggCount++);
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
                        _scaffoldKey.currentState
                          ..removeCurrentSnackBar()
                          ..showSnackBar(snackBar);
                      },
                    )),
                ButtonTheme(
                    minWidth: 83.0,
                    height: 83.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red[300],
                      child: Text("肉"),
                      onPressed: () {
                        setState(() => meatCount++);
                        final snackBar = SnackBar(
                          content: Text('「肉」を追加しました。合計：$meatCount'),
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
                    )),
                ButtonTheme(
                    minWidth: 83.0,
                    height: 83.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue[300],
                      child: Text("魚"),
                      onPressed: () {
                        setState(() => fishCount++);
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
                    )),
              ],
            ),
            ButtonTheme(
                minWidth: 83.0,
                height: 83.0,
                child: RaisedButton(
                  textColor: Colors.white,
                  color: Colors.orange[300],
                  child: Text("購入予定"),
                  onPressed: () {},
                )),
          ],
        ),
      ),
    );
  }
}
