import 'package:flutter/material.dart';
//import 'model.dart';

//List<Widget> Indlist;
//--------------list
List<Widget> indlist = [
  Container(),
  SafeArea(
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
  ),
  SafeArea(
    child: Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.white70, width: 1),
            borderRadius: BorderRadius.circular(10),
          ),
          color: Colors.redAccent,
          child:
              /*Column(
              children: [
                SizedBox(height: 60),
                Text("55"),
                Expanded(
                  child: FutureBuilder<List<int>>(
                      future: _getResults(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) {
                          return ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) => Shimmer.fromColors(
                                child: name[-1],
                                baseColor: Colors.grey[400],
                                highlightColor: Colors.white),
                          );
                        }
                        return ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) => name[index],
                        );
                      }),
                ),
              ],
            ),*/
              Padding(
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
                      "Dan ky san cau long",
                      style: TextStyle(color: Colors.black, fontSize: 25),
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
                    Divider(),
                    Text(
                      "San Cou long",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Divider(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  SafeArea(
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
                      "Dang ky nha golf",
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
                      " Golf Khoang 1",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      " Golf Khoang 2",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "Golf Khoang 3",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  SafeArea(
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
                      "Dang ky san da nang",
                      style: TextStyle(color: Colors.black, fontSize: 25),
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
                      "San Da Nang ",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    Divider(),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  SafeArea(
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
                      "Dang ky vuong bbq",
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
                      "BBQ 1",
                      style: TextStyle(color: Colors.black, fontSize: 25),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 2",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 3",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 4",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 5",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 6",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 7",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 8",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 9",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                    Text(
                        "-----------------------------------------------------"),
                    Text(
                      "BBQ 10",
                      style: TextStyle(color: Colors.black, fontSize: 22),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    ),
  ),
];
