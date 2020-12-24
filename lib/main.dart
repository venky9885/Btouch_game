import 'package:flutter/material.dart';
//import 'package:bot_toast/bot_toast.dart';
//import 'package:timer_button/timer_button.dart';
//import 'package:draggable_widget/draggable_widget.dart';
//import 'package:intl/intl.dart';
import './list.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
      routes: {
        /*CardScreen1.roteName: (context) => CardScreen1(),
        CardScreen2.roteName: (context) => CardScreen2(),
        CardScreen3.roteName: (context) => CardScreen3(),
        CardScreen4.roteName: (context) => CardScreen4(),
        CardScreen5.roteName: (context) => CardScreen5(),*/
      },
    ));

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  //double top = 0, top2 = 0;
  //double left = 0, left2 = 0;
  double xPosition = 320;
  double yPosition = 600;
  int currentIndex = 0;
  TextEditingController _timeController = TextEditingController();
  TextEditingController _secondController = TextEditingController();
  //List<Widget> movableItems = [];
  DateTime entered;
  DateTime now = DateTime.now();
  //TimeOfDay _time = TimeOfDay.now();

  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  TimeOfDay picked;
  String _hour, _minute, _timer;
  Timer timer;
  int t;

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(
        context: context,
        initialTime: selectedTime,
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
                //alwaysUse24HourFormat: false,
                ),
            child: child,
          );
        } //_time,
        );
    if (picked != null)
      setState(() {
        // _time = picked;

        selectedTime = picked;
        print("selected time: $selectedTime");
        print("selected time: $now");
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _timer = _hour + ": " + _minute;
        //_timeContoller.text = _timer;
      });
  }

  @override
  void initState() {
    super.initState();
    //if (DateTime.now == entered) {}
  }

  void autoPress(int second, int t) {
    timer = Timer(Duration(milliseconds: second), () {
      setState(() {
        currentIndex = t;
      });
    });
  }
  /*@override
  void initState() {
    super.initState();
    //if (DateTime.now == entered) {}
  }
  _pickTime() async{
    TimeofDay time = await showTimePicker(context: context, initialTime: _time,
    builder: (BuilderContext context,Widget child) {

    })
  }*/

  //final DragController dragController = DragController();
  @override
  Widget build(BuildContext context) {
    //DateTime now = DateTime.now();
    //String formattedDate = DateFormat('kk:mm:ss').format(now);
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            centerTitle: true,
            title: Text(
              "BTouch-Game ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          backgroundColor: Colors.grey[900],
          body: Stack(
            children: [
              IndexedStack(
                index: currentIndex,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              //print(currentIndex);
                              currentIndex = 1;
                              print(currentIndex);
                            });
                            //print(currentIndex);
                          },
                          child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'San Tennis',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 2;
                              print(currentIndex);
                            });
                          },
                          child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'San cau long',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //3
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 3;
                              print(currentIndex);
                            });
                          },
                          child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Nha Golf',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //4
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 4;
                              print(currentIndex);
                            });
                          },
                          child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'San  Da Nang',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //5
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = 5;
                              print(currentIndex);
                            });
                          },
                          child: Card(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        'Vuon nuong BBQ',
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 25),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20.0),
                          Container(
                            height: 35,
                            width: 50,
                            color: Colors.white,
                            child: TextField(
                              controller: _timeController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'SS',
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.number,
                              /*onSubmitted: (value) {
                                t = int.parse(value);
                              },*/
                            ),
                          ),
                          SizedBox(width: 20.0),
                          Container(
                            height: 35,
                            width: 50,
                            color: Colors.white,
                            child: TextField(
                              controller: _secondController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'ms',
                              ),
                              autocorrect: false,
                              keyboardType: TextInputType.number,
                              /*onSubmitted: (value) {
                                t = int.parse(value);
                              },*/
                            ),
                          ),
                          SizedBox(width: 20.0),
                          RaisedButton(
                            //t = int.parse(_timeController.text),
                            //timeOutInSeconds: 0,

                            //label: "Start",
                            onPressed: () {
                              print("selected time: $selectedTime");
                              print("selected time: $now");
                              /*if (t != null) {
                                autoPress(t, 5);
                              }
                              selectTime(context);*/
                              /* DateTime before = DateTime.now();
                                                           t = before
                                  .difference(selectedTime)
                                  .inMilliseconds;*/
                              if (_timeController.text != null &&
                                  _secondController.text != null) {
                                final cuRRent = DateTime.now();
                                final before = DateTime(
                                  now.year,
                                  now.month,
                                  now.day,
                                  selectedTime.hour,
                                  selectedTime.minute,
                                  int.parse(_timeController.text),
                                  int.parse(_secondController.text),
                                );
                                t = before.difference(cuRRent).inMilliseconds;
                                print(t);
                              } else {
                                t = null;
                              }
                              //t = int.parse(_timeController.text);
                              if (t != null) {
                                if (yPosition > 2.9 && yPosition < 69.45) {
                                  /*Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Started"),
                                    ),
                                  );*/
                                  //BotToast.showText(text: "Started");
                                  autoPress(t, 1);
                                  //BotToast.showText(text: "Started");
                                } else if (yPosition > 118 && yPosition < 177) {
                                  /*Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Started"),
                                    ),
                                  );*/
                                  //BotToast.showText(text: "Started");
                                  autoPress(t, 2);
                                } else if (yPosition > 228 && yPosition < 294) {
                                  /*Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Started"),
                                    ),
                                  );*/
                                  //BotToast.showText(text: "Started");
                                  autoPress(t, 3);
                                } else if (yPosition > 339 && yPosition < 390) {
                                  /*Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Started"),
                                    ),
                                  );*/
                                  //BotToast.showText(text: "Started");
                                  autoPress(t, 4);
                                } else if (yPosition > 445 && yPosition < 507) {
                                  /*Scaffold.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("Started"),
                                    ),
                                  );*/
                                  //BotToast.showText(text: "Started");
                                  autoPress(t, 5);
                                }
                              } else {
                                /* Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Enter Time To Start"),
                                  ),
                                );*/
                                //BotToast.showText(text: "Enter Time To Start");
                              }
                              _timeController.clear();
                              _secondController.clear();
                            },
                            child: Text("Play"),
                            color: Colors.redAccent,
                          ),
                          SizedBox(width: 30.0),
                          (_timer == null)
                              ? Container()
                              : Text(
                                  _timer, //+:+${_timeController.text}+:${_timeController.text}",
                                  //_time.toString(),
                                  style: TextStyle(color: Colors.redAccent),
                                ),
                          SizedBox(width: 30.0),
                          GestureDetector(
                            onTap: () {
                              selectTime(context);
                            },
                            child: Container(
                              width: 35.0,
                              height: 35.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green,
                              ),
                              child: Center(
                                child: Icon(Icons.lock_clock),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  indlist[1],
                  indlist[2],
                  indlist[3],
                  indlist[4],
                  indlist[5],
                ],
              ),
              Positioned(
                top: yPosition,
                left: xPosition,
                child: GestureDetector(
                  onPanUpdate: (tapInfo) {
                    setState(() {
                      xPosition += tapInfo.delta.dx;
                      yPosition += tapInfo.delta.dy;
                    });
                  },
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: Center(
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.black, fontSize: 19),
                      ),
                    ),
                  ),
                ),
              ),
              MoveableStackItem2(),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.home),
            backgroundColor: Colors.redAccent,
            onPressed: () {
              setState(() {
                currentIndex = 0;
                print(currentIndex);
              });
            },
          )),
      // ),
    );
  }
}

// class DragItem1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 35.0,
//       height: 35.0,
//       decoration: new BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.green,
//       ),
//       child: Center(
//         child: Text(
//           "1",
//           style: TextStyle(color: Colors.black, fontSize: 19),
//         ),
//       ),
//     );
//   }
// }

// class DragItem2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 35.0,
//       height: 35.0,
//       decoration: new BoxDecoration(
//         shape: BoxShape.circle,
//         color: Colors.greenAccent,
//       ),
//       child: Center(
//         child: Text(
//           "2",
//           style: TextStyle(color: Colors.black, fontSize: 19),
//         ),
//       ),
//     );
//   }
// }

// double top = 0;
// double left = 0;

// child: Draggable(
//   child: Container(
//     padding: EdgeInsets.only(top: top, left: left),
//     child: DragItem(),
//   ),
//   feedback: Container(
//     padding: EdgeInsets.only(top: top, left: left),
//     child: DragItem(),
//   ),
//   childWhenDragging: Container(
//     padding: EdgeInsets.only(top: top, left: left),
//     child: DragItem(),
//   ),
//   onDragCompleted: () {},
//   onDragEnd: (drag) {
//     setState(() {
//       top = top + drag.offset.dy < 0 ? 0 : top + drag.offset.dy;
//       left = left + drag.offset.dx < 0 ? 0 : left + drag.offset.dx;
//     });
//   },
// ),
// ---
//  DraggableWidget(
//             bottomMargin: 80,
//             topMargin: 80,
//             intialVisibility: true,
//             horizontalSapce: 20,
//             shadowBorderRadius: 15,
//             child: Container(
//               height: 75,
//               width: 75,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.redAccent,
//               ),
//             ),
//             initialPosition: AnchoringPosition.topRight,
//             dragController: dragController,
//           )class _MoveableStackItemState extends State<MoveableSt

class MoveableStackItem extends StatefulWidget {
  @override
  _MoveableStackItemState createState() => _MoveableStackItemState();
}

class _MoveableStackItemState extends State<MoveableStackItem> {
  double xPosition = 320;
  double yPosition = 600;
  //Color color;

  @override
  void initState() {
    //color = RandomColor().randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
          });
        },
        child: Container(
          width: 35.0,
          height: 35.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              "1",
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}

class MoveableStackItem2 extends StatefulWidget {
  @override
  _MoveableStackItem2State createState() => _MoveableStackItem2State();
}

class _MoveableStackItem2State extends State<MoveableStackItem2> {
  double xPosition = 320;
  double yPosition = 640;
  Color color;

  @override
  void initState() {
    //color = RandomColor().randomColor();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: yPosition,
      left: xPosition,
      child: GestureDetector(
        onPanUpdate: (tapInfo) {
          setState(() {
            xPosition += tapInfo.delta.dx;
            yPosition += tapInfo.delta.dy;
            //print("x is $xPosition y is $yPosition");
          });
        },
        child: Container(
          width: 35.0,
          height: 35.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
          child: Center(
            child: Text(
              "2",
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
          ),
        ),
      ),
    );
  }
}
//////////////////////-------------------
// CustomMultiChildLayout(
//               children: [
//                 LayoutId(
//                   id: 1,
//                   child: Draggable(
//                     child: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem1(),
//                     ),
//                     feedback: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem1(),
//                     ),
//                     childWhenDragging: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem1(),
//                     ),
//                     onDragCompleted: () {},
//                     onDragEnd: (drag) {
//                       setState(() {
//                         top =
//                             top + drag.offset.dy < 0 ? 0 : top + drag.offset.dy;
//                         left = left + drag.offset.dx < 0
//                             ? 0
//                             : left + drag.offset.dx;
//                       });
//                     },
//                   ),
//                 ),
//                 LayoutId(
//                   id: 2,
//                   child: Draggable(
//                     child: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem2(),
//                     ),
//                     feedback: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem2(),
//                     ),
//                     childWhenDragging: Container(
//                       padding: EdgeInsets.only(top: top, left: left),
//                       child: DragItem2(),
//                     ),
//                     onDragCompleted: () {},
//                     onDragEnd: (drag) {
//                       setState(() {
//                         top2 = top2 + drag.offset.dy < 0
//                             ? 0
//                             : top2 + drag.offset.dy;
//                         left2 = left2 + drag.offset.dx < 0
//                             ? 0
//                             : left2 + drag.offset.dx;
//                       });
//                     },
//                   ),
//                 )
//               ],
//             ),
