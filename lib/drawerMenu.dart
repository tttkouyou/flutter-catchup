import 'package:flutter/material.dart';

import './addFoodButton.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({
    Key key,
    this.addButton,
  });

  final addButton;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Text(
              'メニュー',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          AddFoodButton(
            addButton: addButton,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text(
              '設定',
              style: TextStyle(
                color: Colors.orange[500],
                fontSize: 20,
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}