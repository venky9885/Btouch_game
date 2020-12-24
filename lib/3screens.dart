/*import 'package:flutter/material.dart';
//import 'package:shimmer/shimmer.dart';

class CardScreen1 extends StatelessWidget {
  static const roteName = '/CardScreen1';
  Future<List<int>> _getResults() async {
    await Future.delayed(Duration(seconds: 3));
    return List<int>.generate(4, (index) => index);
  }

  List name = [
    "San Vinschool 1",
    "San Vinschool 2",
    "San Cong vien 1",
    "San Cong vien 2"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.redAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          /*image: new DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage(Person.profileImg)
                           )*/
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Dang ky san tennis",
                        style: TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white70, width: 1),
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          /*image: new DecorationImage(
                               fit: BoxFit.cover,
                               image: AssetImage(Person.profileImg)
                           )*/
                        )),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "San Vinschool 1",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                      Text(
                          "-----------------------------------------------------"),
                      Text(
                        "San Vinschool 2",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      Text(
                          "-----------------------------------------------------"),
                      Text(
                        "San Cong vien 1",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                      Text(
                          "-----------------------------------------------------"),
                      Text(
                        "San Cong vien 2",
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
*/
