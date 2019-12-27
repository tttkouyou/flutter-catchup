import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddFoodButtonPage extends StatefulWidget {
  // AddFoodButtonPage({
  //   Key: key,
  // });

  @override
  AddFoodButtonPageState createState() => AddFoodButtonPageState();
}

class AddFoodButtonPageState extends State<AddFoodButtonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('食品ボタンを追加'),
        backgroundColor: Colors.orange,
      ),
      // body: Form(
      //   Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: <Widget>[
      //       TextFormField(
      //         validator: (value) {
      //           if (value.isEmpty) {
      //             return '食品名を入力してください';
      //           }
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
