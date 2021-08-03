import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcWidgetButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;

  const CalcWidgetButton(
      {required this.text,
      required this.fillColor,
      this.textColor = 0xFFFFFFF,
      this.textSize = 26,
      required this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 65,
        height: 65,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: callBack(text),
          child: Text(
            text,
            style: GoogleFonts.rubik(
                textStyle: TextStyle(
              fontSize: textSize,
            )),
          ),
          color: fillColor != null ? Color(fillColor) : null,
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
