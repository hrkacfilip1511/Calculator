import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callBack;
  const CalculatorButton({
    required this.text,
    required this.fillColor,
    required this.textColor,
    required this.textSize,
    required this.callBack,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        width: 70,
        height: 70,
        child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
          child: Text(
            text,
            style: GoogleFonts.lato(
              fontSize: textSize,
            ),
          ),
          onPressed: () => callBack(text),
          color: Color(fillColor),
          textColor: Color(textColor),
        ),
      ),
    );
  }
}
