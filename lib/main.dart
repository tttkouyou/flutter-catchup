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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'buyer support App',
      theme: ThemeData(),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('お買い物サポート'), backgroundColor: Colors.orange),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              //types button
              children: <Widget>[
                Expanded(
                  child: Container(
                      constraints: BoxConstraints.expand(
                        height: 83.0,
                        width: 83.0,
                      ),
                      child: Center(
                        child: Text(
                          "肉",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      color: Colors.red[200],
                      margin: EdgeInsets.all(27),
                      padding: EdgeInsets.all(10)),
                ),
                Expanded(
                  child: Container(
                      constraints: BoxConstraints.expand(
                        height: 83.0,
                        width: 83.0,
                      ),
                      child: Center(
                        child: Text(
                          "卵",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      color: Colors.yellow[200],
                      margin: EdgeInsets.all(27),
                      padding: EdgeInsets.all(10)),
                ),
                Expanded(
                  child: Container(
                      constraints: BoxConstraints.expand(
                        height: 83.0,
                        width: 83.0,
                      ),
                      child: Center(
                        child: Text(
                          "魚",
                          style: TextStyle(fontSize: 30.0),
                        ),
                      ),
                      color: Colors.blue[200],
                      margin: EdgeInsets.all(27),
                      padding: EdgeInsets.all(10)),
                ),
              ],
            ),
            Expanded(
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 83.0,
                ),
                child: Center(
                  child: Text(
                    "購入予定",
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
                color: Colors.orange[300],
                margin: EdgeInsets.all(27),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
