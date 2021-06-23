import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class History extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function() callback;
  final Function() callback2;
  final Function() callback3;

  const History({
    Key key,
    this.text,
    this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 28,
    this.callback,
    this.callback2,
    this.callback3,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return new Container(
    //  height: deviceHeight * 0.3,
    //  width: deviceWidth * 0.8,
      child: SingleChildScrollView(
        reverse: true,
        child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: GestureDetector(
                    onDoubleTap: () {
                     // numClick(_calcs13);
                      callback();
                    },
                    onLongPress: () {
                      //listClick('(' + _calcs13 + ')');
                      callback2();
                    },
                   // onHorizontalDragStart: (details) => flickDelete12(),
                     onHorizontalDragStart: (details) => callback3,
                    child: Text(
                      //view12,
                      text,
                      style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                alignment: Alignment(-1, 1.0),
              ),
              Divider(color: Colors.white, height: 20),
            ],
        ),
      ),
    );
  }
}

/*
      margin: EdgeInsets.only(top: 2,bottom: 2,right: 0,left: 0),
      child: SizedBox(
        width: 65,
        height: 65,
        child: Theme(
          data: ThemeData(splashColor: Colors.black),
          child: Material(
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            color: Colors.transparent,
            child: InkWell(
              child: FlatButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius .circular(20),
                ),
                onPressed: () {
                  callback(text);
                },
                onLongPress: () {
                  callback2(text2);
                  HapticFeedback.heavyImpact();
                },
                child: Text(
                  text,
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      fontSize: textSize,
                    ),
                  ),
                ),
                color: fillColor != null ? Color(fillColor) : null,
                textColor: Color(textColor),
              ),
            ),
          ),
        ),
      ),
    );
  }

       */

