
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipe_gesture_recognizer/swipe_gesture_recognizer.dart';

import 'CalacButton.dart';

class ExplainPage2 extends StatefulWidget {
  const ExplainPage2({Key key}) : super(key: key);

  @override
  _ExplainPageState createState() => _ExplainPageState();
}

class _ExplainPageState extends State<ExplainPage2> {

  String _expression = '';
  String _expression2 = '';
  String _expression3 = '';
  String _expression4 = '';
  String _expression5 = '';
  String _expression6 = '';
  String _expression7 = '';


  void number(String text) {
    setState(() {
      _expression = text;
    });
  }

  void number2(String text) {
    setState(() {
      _expression2 = text;
    });
  }

  void number3(String text) {
    setState(() {
      _expression3 = text;
    });
  }

  void number4(String text) {
    setState(() {
      _expression4 = text;
    });
  }

  void number5 (String text) {
    setState(() {
      _expression5 = text;
    });
  }
  void number6 (String text) {
    setState(() {
      _expression6 = text;
    });
  }
  void number7 (String text) {
    setState(() {
      _expression7 = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xDD000000),
      appBar: AppBar(
        title: Text('操作一覧'),
        backgroundColor: Color(0xDD000000),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Spacer(),
                Text('←', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                Container(width: 80, height: 40, color: Color(0xff888888),
                  child: Center(child: SwipeGestureRecognizer(
                    child: CalcButton3(
                      text: '()',
                      fillColor: 0xff888888,
                      textColor: 0xFF000000,
                      textSize: 20,
                    //  callback: number,
                    ),
                    onSwipeLeft: () {
                      number('(');
                    },
                    onSwipeRight: () {
                      number(')');
                    },
                  ),
                  ),
                ),
                Text('→︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                Spacer(),
                Container(width: 85,height: 40,color: Colors.grey,
                    child: Center(child: Text(_expression,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Spacer(),
                Text('←', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),

                Container(width: 80, height: 40, color: Color(0xff888888),
                  child: Center(child: SwipeGestureRecognizer(
                    child: CalcButton3(
                      text: 'tax',
                      fillColor: 0xff888888,
                      textColor: 0xFF000000,
                      textSize: 20,
                      //  callback: number,
                    ),
                    onSwipeLeft: () {
                      number7('ln');
                    },
                    onSwipeRight: () {
                      number7('log2(2)');
                    },
                  ),
                  ),
                ),

                Text('→︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                Spacer(),
                Container(width: 85,height: 40,color: Colors.grey,
                    child: Center(child: Text(_expression7,style: TextStyle(color: Colors.white,fontSize: 20),))),
                Spacer(),
              ],
            ),


            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text('↑︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                    Container(width: 40, height: 40, color: Color(0xff888888),
                      child: Center(child: Text('×︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 30,color: Color(0xFFFFFFFF)))),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('←︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                        Container(width: 40, height: 40, color: Color(0xff888888),
                          child: Center(child: Text('−', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 30,color: Color(0xFFFFFFFF)))),
                          ),),
                        Container(width: 40, height: 40, color: Color(0xff424242),
                          child: SwipeGestureRecognizer(
                            child: CalcButton3(
                              text: '5',
                              fillColor: 0xff424242,
                              textColor: 0xFF000000,
                              textSize: 20,
                              callback: number2,
                            ),
                            onSwipeLeft: () {
                              number2('-');
                            },
                            onSwipeRight: () {
                              number2('+');
                            },
                            onSwipeUp: () {
                              number2('*');
                            },
                            onSwipeDown: () {
                              number2('/');
                            },
                          ),
                        ),
                        Container(width: 40, height: 40, color: Color(0xff888888),
                          child: Center(child: Text('+', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 30,color: Color(0xFFFFFFFF)))),
                          ),),
                        Text('→', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                      ],
                    ),
                    Container(width: 40, height: 40, color: Color(0xff888888),
                      child: Center(child: Text('÷', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 30,color: Color(0xFFFFFFFF)))),
                      ),
                    ),
                    Text('↓︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                  ],
                ),
                Spacer(),
                Container(width: 55,height: 55,color: Colors.grey,
                    child: Center(child: Text(_expression2,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),

            Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Text('↑︎', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                    Container(width: 40, height: 40, color: Color(0xff888888),
                      child: Center(child: Text('sin', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('←', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                        Container(width: 40, height: 40, color: Color(0xff888888),
                          child: Center(child: Text('tan', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                          ),),
                        Container(width: 40, height: 40, color: Color(0xff424242),
                          child: SwipeGestureRecognizer(
                            child: CalcButton3(
                              text: '%',
                              fillColor: 0xff424242,
                              textColor: 0xFF000000,
                              textSize: 20,
                              callback: number5,
                            ),
                            onSwipeLeft: () {
                              number5('tan');
                            },
                            onSwipeRight: () {
                              number5('cos');
                            },
                            onSwipeUp: () {
                              number5('sin');
                            },
                          ),
                        ),
                        Container(width: 40, height: 40, color: Color(0xff888888),
                          child: Center(child: Text('cos', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                          ),),
                        Text('→', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 40,color: Color(0xFFFFFFFF)))),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Container(width: 55,height: 55,color: Colors.grey,
                    child: Center(child: Text(_expression5,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),

            Spacer(),


            Row(
              children: [
                Spacer(),
                Container(width: 130, height: 45, color: Color(0xff888888),
                  child: Center(
                    child: GestureDetector(child: Text('長押し(２)', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                      onLongPress: () {
                        number6('2*1');
                        print("ss");
                      },
                    ),
                  ),
                ),
                Spacer(),
                Container(width: 150,height: 45,color: Colors.grey,
                    child: Center(child: Text(_expression6,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Spacer(),
                Container(width: 130, height: 45, color: Color(0xff888888),
                  child: Center(
                    child: GestureDetector(
                      child: Text('2回タップ', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 20,color: Color(0xFFFFFFFF)))),
                      onDoubleTap: () {
                        number3('a + b');
                      },
                    ),
                  ),
                ),
                Spacer(),
                Container(width: 150,height: 45,color: Colors.grey,
                    child: Center(child: Text(_expression3,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Spacer(),
                Container(width: 130, height: 45, color: Color(0xff888888),
                  child: Center(
                    child: GestureDetector(child: Text('長押し(計算履歴)', style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 15,color: Color(0xFFFFFFFF)))),
                      onLongPress: () {
                        number4('(a + b)');
                        print("ss");
                      },
                    ),
                  ),
                ),
                Spacer(),
                Container(width: 150,height: 45,color: Colors.grey,
                    child: Center(child: Text(_expression4,style: TextStyle(color: Colors.white,fontSize: 30),))),
                Spacer(),
              ],
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}