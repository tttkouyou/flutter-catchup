// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';

// final _scaffoldKey = GlobalKey<ScaffoldState>();

// class PurchasePlanButtons extends StatefulWidget {
//   @override
//   PurchasePlanButtonsState createState() => PurchasePlanButtonsState();
// }

// class PurchasePlanButtonsState extends State<PurchasePlanButtons> {
//   @override
//   Widget build(BuildContext context) {
//     return ButtonTheme(
//         minWidth: 83.0,
//         height: 83.0,
//         child: RaisedButton(
//           textColor: Colors.white,
//           color: Colors.orange[300],
//           child: Text("購入予定"),
//           onPressed: () {
//             final snackBar = SnackBar(
//               content: Text('卵：$eggCount   肉：$meatCount   魚：$fishCount'),
//               backgroundColor: Colors.orange[300],
//               action: SnackBarAction(
//                 label: '閉じる',
//                 onPressed: () {
//                   // Some code to undo the change.
//                 },
//               ),
//             );
//             _scaffoldKey.currentState
//               ..removeCurrentSnackBar()
//               ..showSnackBar(snackBar);
//           },
//         ),
//       );
//   }
// }
