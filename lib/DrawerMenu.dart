import 'package:flutter/material.dart';

import './AddGoodsButtonForm.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({
    Key key,
    this.addButton,
    this.addButtonColor,
  });

  final addButton;
  final addButtonColor;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: const Text(
              'メニュー',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
          ),
          AddGoodsButton(
            addButton: addButton,
            addButtonColor: addButtonColor,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
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

class AddGoodsButton extends StatelessWidget {
  AddGoodsButton({
    Key key,
    this.addButton,
    this.addButtonColor,
  });

  final addButton;
  final addButtonColor;

  void addGoodsButtonPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddGoodsButtonForm(
          addButton: addButton,
          addButtonColor: addButtonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.add_circle_outline),
      title: Text(
        '商品ボタンを追加',
        style: TextStyle(
          color: Colors.orange[500],
          fontSize: 20,
        ),
      ),
      onTap: () => addGoodsButtonPage(context),
    );
  }
}
