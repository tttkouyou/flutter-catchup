import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

var eggCount = 0;

final _scaffoldKey = GlobalKey<ScaffoldState>();

class EggButtons extends StatefulWidget {
  @override
  EggButtonsState createState() => EggButtonsState();
}

class EggButtonsState extends State<EggButtons> {
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
        minWidth: 83.0,
        height: 83.0,
        child: RaisedButton(
          textColor: Colors.white,
          padding: EdgeInsets.all(27),
          color: Colors.yellow[500],
          child: Text("卵"),
          onPressed: () {
            eggCount += 1;
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
        ),
        );
  }
}
//   ButtonTheme(
//       minWidth: 83.0,
//       height: 83.0,
//       child: RaisedButton(
//         textColor: Colors.white,
//         color: Colors.red[300],
//         child: Text("肉"),
//         onPressed: () {
//           meatCount += 1;
//           final snackBar = SnackBar(
//             content: Text('「肉」を追加しました。合計：$meatCount'),
//             backgroundColor: Colors.orange[300],
//             action: SnackBarAction(
//               label: '閉じる',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//           _scaffoldKey.currentState
//             ..removeCurrentSnackBar()
//             ..showSnackBar(snackBar);
//         },
//       ));

//   ButtonTheme(
//     minWidth: 83.0,
//     height: 83.0,
//     child: RaisedButton(
//       textColor: Colors.white,
//       color: Colors.blue[300],
//       child: Text("魚"),
//       onPressed: () {
//         fishCount += 1;
//         final snackBar = SnackBar(
//           content: Text('「魚」を追加しました。合計：$fishCount'),
//           backgroundColor: Colors.orange[300],
//           action: SnackBarAction(
//             label: '閉じる',
//             onPressed: () {
//               // Some code to undo the change.
//             },
//           ),
//         );
//         _scaffoldKey.currentState
//           ..removeCurrentSnackBar()
//           ..showSnackBar(snackBar);
//       },
//     ),
//   );
//   ButtonTheme(
//       minWidth: 83.0,
//       height: 83.0,
//       child: RaisedButton(
//         textColor: Colors.white,
//         color: Colors.orange[300],
//         child: Text("購入予定"),
//         onPressed: () {
//           final snackBar = SnackBar(
//             content: Text('卵：$eggCount   肉：$meatCount   魚：$fishCount'),
//             backgroundColor: Colors.orange[300],
//             action: SnackBarAction(
//               label: '閉じる',
//               onPressed: () {
//                 // Some code to undo the change.
//               },
//             ),
//           );
//           _scaffoldKey.currentState
//             ..removeCurrentSnackBar()
//             ..showSnackBar(snackBar);
//         },
//       ));
// }
