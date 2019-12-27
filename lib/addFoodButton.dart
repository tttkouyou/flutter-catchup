import 'package:flutter/material.dart';

import './addFoodButtonPage.dart';

class AddFoodButton extends StatelessWidget {
  void addFoodButtonPage(BuildContext context, _) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => AddFoodButtonPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 13.0),
      child: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.orange[300],
        onPressed: () {},
      ),
    );
  }
}
