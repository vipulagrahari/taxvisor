import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:getwidget/getwidget.dart';

Widget typer(String a) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: DefaultTextStyle(
      style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
        fontSize: 30,
        color: Colors.black,
        // fontStyle: FontStyle.
      )),
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText(
            a,
            speed: const Duration(milliseconds: 50),
          ),
        ],
      ),
    ),
  );
}
