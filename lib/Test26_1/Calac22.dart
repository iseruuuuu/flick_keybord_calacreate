import 'package:admob_flutter/admob_flutter.dart';
import 'package:calacreate_flick3_app/Test15_31/admob.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'dart:math';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import '../CalacButton.dart';
import '../CalacButton3.dart';
import '../explain_page.dart';



class MyApp6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalcApp6(),
    );
  }
}

class CalcApp6 extends StatefulWidget {
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp6> {

  //記載されていないもの　リスト（履歴編）
  String _expression = '';
  double fontSize = 20;
  int onTap = 1;
  bool isNumber = false;
  String _calc = '';
  String _history = '';

  List<String> listItem = [];
  List<String> listItem2 = [];
  List<String> listItem3 = [];

  void numClick(String text) {
    if (text == 'sqrt') {
      setState(() {
        _expression += text;
      });
    }else {
      if (text == '+' || text == '-' || text == '*' || text == '/') {
        if (isNumber == false) {
          setState(() {
            _expression += text;
          });
          isNumber = true;
        } else {}
      } else {
        isNumber = false;
        setState(() {
          _expression += text;
        });
      }
    }
  }
  void listClick(String text) {
    if (text == '(sqrt$text)') {
      setState(() {

      });
    }else{
      isNumber = false;
      setState(() {
        _expression += text;
      });
    }
  }
  void delete () {
    setState(() {
      if (_expression.length == 0) {
      }else{
        isNumber = false;
        var pos = _expression.length - onTap;
        final result = _expression.substring(0, pos);
        _expression = result;
        _calc = result;
      }
    });
  }
  void allClear(String text) {
    setState(() {
      _expression = '';
      listItem.clear();

    });
  }
  void clear(String text) {
    setState(() {
      _expression = '';
    });
  }
  void evaluate(String text) {
    if (_expression.length == 0) {

    }else{
      Parser p = Parser();
      Expression exp = p.parse(_expression);
      ContextModel cm = ContextModel();
      setState(() {
        listItem2.add(_expression);
        listItem3.add("("+ _expression + ")");
        _calc = exp.evaluate(EvaluationType.REAL, cm).toString();
        if (_expression + ".0" == _calc || _expression == _calc)  {
          _history = _calc;
          listItem2.add(_history);
        }else {
          _history = _expression + ' = ' + _calc;
        }
        listItem.add(_history);
        _expression = exp.evaluate(EvaluationType.REAL, cm).toString();
        _expression = '';
      });
    }
  }

  void blank(String text){

  }

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xDD000000),
        body: Container(
          padding: EdgeInsets.all(12),
          //padding: EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              AdmobBanner(
                adUnitId: AdMobService().getBannerAdUnitId(),
                adSize: AdmobBannerSize(
                  width: MediaQuery.of(context).size.width.toInt(),
                  height: AdMobService().getHeight(context).toInt(),
                  name: 'SMART_BANNER',
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // reverse: true,
                    itemCount: listItem.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Slidable(
                        actionExtentRatio: 0.2,
                        actionPane: SlidableScrollActionPane(),
                        // 左側に表示するWidget
                        actions: <Widget>[
                          IconSlideAction(
                            caption: '式を代入',
                            color: Colors.yellow,
                            icon: Icons.archive_outlined,
                            onTap: () {
                              numClick(listItem2[index]);
                            },
                          ),
                          IconSlideAction(
                            caption: '（式)を代入',
                            color: Colors.blue,
                            icon: Icons.archive,
                            onTap: () {
                              numClick(listItem3[index]);
                            },
                          ),
                        ],
                        // 右側に表示するWidget
                        secondaryActions: [
                          IconSlideAction(
                            caption: '削除',
                            color: Colors.red,
                            icon: Icons.restore_from_trash,
                            onTap: () {
                              // toDoList.remove(data);
                              setState(() {
                                listItem.removeAt(index);
                                listItem2.removeAt(index);
                                listItem3.removeAt(index);
                              });
                            },
                          ),
                        ],
                        child: GestureDetector(
                          onTap: () {
                            //計算のすべて
                            // print(listItem[index]);
                            //計算履歴
                            // print(listItem2[index]);
                            //() をつけた計算履歴
                            // print(listItem3[index]);
                          },
                          child: Card(
                            child: Container(
                              width: deviceHeight * 0.9,
                              child: Text(' ' + listItem[index], style: TextStyle(color:Colors.black,fontSize: 25),
                              ),
                            ),
                          ),
                        ),
                        //   ),
                      );
                    }
                ),
              ),

              Divider(color: Colors.white, height: 20,thickness: 3,),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 0 ,bottom: 0),
                  child: FlatButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      print(_expression);
                    },
                    child: Text(
                      _expression,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                      overflow: TextOverflow.fade,
                      maxLines: 2,
                    ),
                  ),
                ),
                alignment: Alignment(1.0, 1.0),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Theme(
                          data: ThemeData(splashColor: Colors.white),
                          child: Material(
                            elevation: 0,
                            clipBehavior: Clip.hardEdge,
                            // color: Colors.transparent,
                            color: Color(0xff424242),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius .circular(20),
                            ),
                            child: InkWell(
                              onLongPress: () {
                                Dialog();
                              },
                              onTap: () {
                                clear("");
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                width: 65,
                                height: 65,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Color(0xff424242),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text('AC/C',
                                    style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        SwipeGestureRecognizer(
                          onSwipeUp: () {
                            // numClick('ln');
                          },
                          onSwipeRight: () {
                            //できなかったもの
                            //numClick('e');
                            numClick('log2(2)');
                          },
                          onSwipeLeft: () {
                            //できなかったもの
                            numClick('ln');
                          },
                          onSwipeDown: () {
                            //できなかったもの
                            //numClick('π');
                          },
                          child: Theme(
                            data: ThemeData(splashColor: Colors.white),
                            child: Material(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              // color: Colors.transparent,
                              color: Color(0xff424242),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius .circular(20),
                              ),
                              child: InkWell(
                                onLongPress: () {
                                },
                                onTap: () {
                                  numClick('* 1.1');
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Color(0xff424242),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text('TAX',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4,),
                        SwipeGestureRecognizer(
                          onSwipeUp: () {
                            // numClick('ln');
                          },
                          onSwipeRight: () {
                            //できなかったもの
                            //numClick('e');
                            numClick(')');
                          },
                          onSwipeLeft: () {
                            //できなかったもの
                            numClick('(');
                          },
                          onSwipeDown: () {
                            //できなかったもの
                            //numClick('π');
                          },
                          child: Theme(
                            data: ThemeData(splashColor: Colors.white),
                            child: Material(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              // color: Colors.transparent,
                              color: Color(0xff424242),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius .circular(20),
                              ),
                              child: InkWell(
                                onLongPress: () {
                                },
                                onTap: () {
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Color(0xff424242),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text('( )',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4,),
                        SwipeGestureRecognizer(
                          onSwipeUp: () {
                            // numClick('ln');
                          },
                          onSwipeRight: () {
                            //できなかったもの
                            //numClick('e');
                            numClick(')');
                          },
                          onSwipeLeft: () {
                            //できなかったもの
                            numClick('(');
                          },
                          onSwipeDown: () {
                            //できなかったもの
                            //numClick('π');
                          },
                          child: Theme(
                            data: ThemeData(splashColor: Colors.white),
                            child: Material(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              // color: Colors.transparent,
                              color: Color(0xff424242),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius .circular(20),
                              ),
                              child: InkWell(
                                onLongPress: () {
                                },
                                onTap: () {
                                  numClick('sqrt');
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Color(0xff424242),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text('√',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '7',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '7*6*5*4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '4',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '1',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '0',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '8',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '8*7*6*5*4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '5',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '5*4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '2',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),

                        SwipeGestureRecognizer(
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                          child: Theme(
                            data: ThemeData(splashColor: Colors.black),
                            child: Material(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              // color: Colors.transparent,
                              color: Color(0xff888888),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius .circular(20),
                              ),
                              child: InkWell(
                                onLongPress: () {
                                },
                                onTap: () {
                                  numClick('00');
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Color(0xff424242),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text('00',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '9',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '9*8*7*6*5*4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '6',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '6*5*4*3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '3',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                            text2: '3*2*1',
                            callback2: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                        SwipeGestureRecognizer(
                          child: CalcButton3(
                            text: '.',
                            textSize: 40,
                            fillColor: 0xff888888,
                            textColor: 0xFFFFFFFF,
                            callback: numClick,
                          ),
                          onSwipeLeft: () {
                            numClick('-');
                          },
                          onSwipeRight: () {
                            numClick('+');
                          },
                          onSwipeUp: () {
                            numClick('*');
                          },
                          onSwipeDown: () {
                            numClick('/');
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 2,bottom: 2,right: 0,left: 0),
                          child: SizedBox(
                            width: 65,
                            height: 65,
                            child: HoldDetector(
                              onHold: () {
                                delete();
                                //削除する場合は、軽い操作の方がいい。
                                HapticFeedback.selectionClick();
                              },
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                onPressed: () {
                                  delete();
                                },
                                child: Text('⌫',
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: 50,
                                    ),
                                  ),
                                ),
                                color: Color(0xff424242),
                                textColor: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(height: 4),
                        SwipeGestureRecognizer(
                          onSwipeUp: () {
                            numClick('tan');
                          },
                          onSwipeRight: () {
                            numClick('sin');
                          },
                          onSwipeLeft: () {
                            numClick('cos');
                          },
                          child: Theme(
                            data: ThemeData(splashColor: Colors.white),
                            child: Material(
                              elevation: 0,
                              clipBehavior: Clip.hardEdge,
                              // color: Colors.transparent,
                              color: Color(0xff424242),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius .circular(20),
                              ),
                              child: InkWell(
                                onLongPress: () {
                                },
                                onTap: () {
                                  numClick('%');
                                },
                                child: Container(
                                  margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                  width: 65,
                                  height: 65,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    // color: Color(0xff424242),
                                    color: Colors.transparent,
                                  ),
                                  child: Center(
                                    child: Text('%',
                                      style:TextStyle(
                                        color: Colors.white,
                                        fontSize: 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Theme(
                          data: ThemeData(splashColor: Colors.white),
                          child: Material(
                            elevation: 0,
                            clipBehavior: Clip.hardEdge,
                            // color: Colors.transparent,
                            color: Color(0xFFFF6F00),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius .circular(20),
                            ),
                            child: InkWell(
                              onLongPress: () {
                              },
                              onTap: () {
                                evaluate("");
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 0,bottom: 0,right: 0,left: 0),
                                width: 65,
                                height: 135,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  // color: Color(0xff424242),
                                  color: Colors.transparent,
                                ),
                                child: Center(
                                  child: Text('=',
                                    style:TextStyle(
                                      color: Colors.white,
                                      fontSize: 45,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        /*
                        CalcButton31(
                          text: '=',
                          fillColor: 0xFFFF6F00,
                          textColor: 0xFFFFFFFF,
                          textSize: 60,
                          callback: evaluate,
                        ),

                         */
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }





  // ignore: non_constant_identifier_names, missing_return
  Widget Dialog() {
    showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            title: Text(
                '確認',
                textAlign: TextAlign.center),
            content: Text(
                '全ての計算を削除されます'
                ,textAlign: TextAlign.center),
            actions: [
              Divider(color: Colors.black,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'いいえ',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 1,
                    child: VerticalDivider(color: Colors.black,),
                  ),
                  CalcButton3222(
                    text: 'はい',
                    textColor: 0xFF1E88E5,
                    textSize: 20,
                    callback: allClear,
                    callback2: action,
                  ),
                ],
              ),
            ],
          );
        }
    );
  }

  void action () {
    Navigator.pop(context);
  }
}