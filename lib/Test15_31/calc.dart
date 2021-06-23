import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:holding_gesture/holding_gesture.dart';
import 'dart:math';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';
import '../CalacButton.dart';
import '../CalacButton3.dart';
import '../explain_page.dart';
import 'admob.dart';


class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalcApp5(),
    );
  }
}

class CalcApp5 extends StatefulWidget {
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp5> {

  String _history = '';
  String _history2 = '';
  String _history3 = '';
  String _history4 = '';
  String _history5 = '';
  String _history6 = '';
  String _history7 = '';
  String _history8 = '';
  String _history9 = '';
  String _history10 = '';
  String _history11 = '';
  String _history12 = '';
  String _history13 = '';
  String _history14 = '';
  String _history15 = '';
  String _history16 = '';
  String _history17 = '';
  String _history18 = '';
  String _history19 = '';
  String _history20 = '';
  String _history21 = '';
  String _history22 = '';
  String _history23 = '';
  String _history24 = '';
  String _history25 = '';
  String _history26 = '';
  String _history27 = '';
  String _history28 = '';
  String _history29 = '';
  String _history30 = '';
  String _calcs = '';
  String _calcs2 = '';
  String _calcs3 = '';
  String _calcs4 = '';
  String _calcs5 = '';
  String _calcs6 = '';
  String _calcs7 = '';
  String _calcs8 = '';
  String _calcs9 = '';
  String _calcs10 = '';
  String _calcs11 = '';
  String _calcs12 = '';
  String _calcs13 = '';
  String _calcs14 = '';
  String _calcs15 = '';
  String _calcs16 = '';
  String _calcs17 = '';
  String _calcs18 = '';
  String _calcs19 = '';
  String _calcs20 = '';
  String _calcs21 = '';
  String _calcs22 = '';
  String _calcs23 = '';
  String _calcs24 = '';
  String _calcs25 = '';
  String _calcs26 = '';
  String _calcs27 = '';
  String _calcs28 = '';
  String _calcs29 = '';
  String _calcs30 = '';
  //記載されていないもの　リスト（履歴編）
  String _expression = '';
  String _calc = '';
  double fontSize = 20;
  int onTap = 1;
  bool isNumber = false;

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
      _history = '';
      _history2 = '';
      _history3 = '';
      _history4 = '';
      _history5 = '';
      _history6 = '';
      _history7 = '';
      _history8 = '';
      _history9 = '';
      _history10 = '';
      _history11 = '';
      _history12 = '';

      //記載されていないもの　リスト（履歴編）
      _history13 = '';
      _history14 = '';
      _history15 = '';
      _history16 = '';
      _history17 = '';
      _history18 = '';
      _history19 = '';
      _history20 = '';
      _history21 = '';
      _history22 = '';
      _history23 = '';
      _history24 = '';
      _history25 = '';
      _history26 = '';
      _history27 = '';
      _history28 = '';
      _history29 = '';
      _history30 = '';
      _calcs = '';
      _calcs2 = '';
      _calcs3 = '';
      _calcs4 = '';
      _calcs5 = '';
      _calcs6 = '';
      _calcs7 = '';
      _calcs8 = '';
      _calcs9 = '';
      _calcs10 = '';
      _calcs11 = '';
      _calcs12 = '';
      _calcs13 = '';
      _calcs14 = '';
      _calcs15 = '';
      _calcs16 = '';
      _calcs17 = '';
      _calcs18 = '';
      _calcs19 = '';
      _calcs20 = '';
      _calcs21 = '';
      _calcs22 = '';
      _calcs23 = '';
      _calcs24 = '';
      _calcs25 = '';
      _calcs26 = '';
      _calcs27 = '';
      _calcs28 = '';
      _calcs29 = '';
      _calcs30 = '';
      _expression = '';
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
        _history30 = _history29;
        _history29 = _history28;
        _history28 = _history27;
        _history27 = _history26;
        _history26 = _history25;
        _history25 = _history24;
        _history24 = _history23;
        _history23 = _history22;
        _history22 = _history21;
        _history21 = _history20;
        _history20 = _history19;
        _history19 = _history18;
        _history18 = _history17;
        _history17 = _history16;
        _history16 = _history15;
        _history15 = _history14;
        _history14 = _history13;
        _history13 = _history12;
        _history12 = _history11;
        _history11 = _history10;
        _history10 = _history9;
        _history9 = _history8;
        _history8 = _history7;
        _history7 = _history6;
        _history6 = _history5;
        _history5 = _history4;
        _history4 = _history3;
        _history3 = _history2;
        _history2 = _history;
        _calcs30 = _calcs29;
        _calcs29 = _calcs28;
        _calcs28 = _calcs27;
        _calcs27 = _calcs26;
        _calcs26 = _calcs25;
        _calcs25 = _calcs24;
        _calcs24 = _calcs23;
        _calcs23 = _calcs22;
        _calcs22 = _calcs21;
        _calcs21 = _calcs20;
        _calcs20 = _calcs19;
        _calcs19 = _calcs18;
        _calcs18 = _calcs17;
        _calcs17 = _calcs16;
        _calcs16 = _calcs15;
        _calcs15 = _calcs14;
        _calcs14 = _calcs13;
        _calcs13 = _calcs12;
        _calcs12 = _calcs11;
        _calcs11 = _calcs10;
        _calcs10 = _calcs9;
        _calcs9 = _calcs8;
        _calcs8 = _calcs7;
        _calcs7 = _calcs6;
        _calcs6 = _calcs5;
        _calcs5 = _calcs4;
        _calcs4 = _calcs3;
        _calcs3 = _calcs2;
        _calcs2 = _expression;
        _calc = exp.evaluate(EvaluationType.REAL, cm).toString();

        if (_expression + ".0" == _calc || _expression == _calc)  {
          _history = _calc;
        }else {
          _history = _expression + ' =' + _calc;
        }
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
              /*
              AdmobBanner(
                adUnitId: AdMobService().getBannerAdUnitId(),
                adSize: AdmobBannerSize(
                  width: MediaQuery.of(context).size.width.toInt(),
                  height: AdMobService().getHeight(context).toInt(),
                  name: 'SMART_BANNER',
                ),
              ),
               */

              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Center(
                      child: Container(
                        height: deviceHeight * 0.19,
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context, MaterialPageRoute(
                                builder: (context) => ExplainPage2()),
                            );
                          },
                          icon: Icon(Icons.menu, color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                 */

                  new Container(
                    height: deviceHeight * 0.3,
                    width: deviceWidth * 0.9,
                    child: SingleChildScrollView(
                      reverse: true,
                      child: Column(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs13);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs13 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete12(),
                                child: Text(
                                  //view12,
                                  _history12,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs12);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs12 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete11(),
                                child: Text(
                                  // view11,
                                  _history11,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs11);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs11 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete10(),
                                child: Text(
                                  //view10,
                                  _history10,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs10);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs10 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete9(),
                                child: Text(
                                  //  view9,
                                  _history9,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs9);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs9 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete8(),
                                child: Text(
                                  // view8,
                                  _history8,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs8);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs8 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete7(),
                                child: Text(
                                  //view7,
                                  _history7,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs7);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs7 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete6(),
                                child: Text(
                                  //view6,
                                  _history6,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs6);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs6 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete5(),
                                child: Text(
                                  // view5,
                                  _history5,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs5);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs5 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete4(),
                                child: Text(
                                  //view4,
                                  _history4,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs4);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs4 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete3(),
                                child: Text(
                                  // view3,
                                  _history3,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      //color: Color(0xFF545F61),
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs3);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs3 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete2(),
                                child: Text(
                                  // view2,
                                  _history2,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),

                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                          Divider(color: Colors.white, height: 20,thickness: 3,),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 0 ,right: 12),
                              child: GestureDetector(
                                onDoubleTap: () {
                                  numClick(_calcs2);
                                  HapticFeedback.lightImpact();
                                },
                                onLongPress: () {
                                  listClick('(' + _calcs2 + ')');
                                  HapticFeedback.mediumImpact();
                                },
                                onHorizontalDragStart: (details) => flickDelete1(),
                                child: Text(
                                  // view1,
                                  _history,
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      fontSize: fontSize,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            alignment: Alignment(-1, 1.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
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
  void flickDelete1() {
    setState(() {
      _history = _history2;
      _history2 = _history3;
      _history3 = _history4;
      _history4 = _history5;
      _history5 = _history6;
      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      //TODO 途中式も同じように計算する
      _calcs2 = _calcs3;
      _calcs3 = _calcs4;
      _calcs4 = _calcs5;
      _calcs5 = _calcs6;
      _calcs6 = _calcs7;
      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete2() {
    setState(() {
      _history2 = _history3;
      _history3 = _history4;
      _history4 = _history5;
      _history5 = _history6;
      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs3 = _calcs4;
      _calcs4 = _calcs5;
      _calcs5 = _calcs6;
      _calcs6 = _calcs7;
      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete3() {
    setState(() {
      _history3 = _history4;
      _history4 = _history5;
      _history5 = _history6;
      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs4 = _calcs5;
      _calcs5 = _calcs6;
      _calcs6 = _calcs7;
      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;



    });
  }
  void flickDelete4() {
    setState(() {
      _history4 = _history5;
      _history5 = _history6;
      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs5 = _calcs6;
      _calcs6 = _calcs7;
      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;

    });
  }
  void flickDelete5() {
    setState(() {
      _history5 = _history6;
      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs6 = _calcs7;
      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete6() {
    setState(() {

      _history6 = _history7;
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs7 = _calcs8;
      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;



    });
  }
  void flickDelete7() {
    setState(() {
      _history7 = _history8;
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs8 = _calcs9;
      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;




    });
  }
  void flickDelete8() {
    setState(() {
      _history8 = _history9;
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs9 = _calcs10;
      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete9() {
    setState(() {
      _history9 = _history10;
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs10 = _calcs11;
      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete10() {
    setState(() {
      _history10 = _history11;
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;


      _calcs11 = _calcs12;
      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;



    });
  }
  void flickDelete11() {
    setState(() {
      _history11 = _history12;
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;

      _calcs12 = _calcs13;
      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;


    });
  }
  void flickDelete12() {
    setState(() {
      _history12 = _history13;
      _history13 = _history14;
      _history14 = _history15;
      _history15 = _history16;
      _history16 = _history17;
      _history17 = _history18;
      _history18 = _history19;
      _history19 = _history20;
      _history20 = _history21;
      _history21 = _history22;
      _history22 = _history23;
      _history23 = _history24;
      _history24 = _history25;
      _history25 = _history26;
      _history26 = _history27;
      _history27 = _history28;
      _history28 = _history29;
      _history29 = _history30;


      _calcs13 = _calcs14;
      _calcs14 = _calcs15;
      _calcs15 = _calcs16;
      _calcs16 = _calcs17;
      _calcs17 = _calcs18;
      _calcs18 = _calcs19;
      _calcs19 = _calcs20;
      _calcs20 = _calcs21;
      _calcs21 = _calcs22;
      _calcs22 = _calcs23;
      _calcs23 = _calcs24;
      _calcs24 = _calcs25;
      _calcs25 = _calcs26;
      _calcs26 = _calcs27;
      _calcs27 = _calcs28;
      _calcs28 = _calcs29;
      _calcs29 = _calcs30;
    });
  }
}