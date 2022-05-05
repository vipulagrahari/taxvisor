import 'package:flutter/cupertino.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:getwidget/getwidget.dart';

Widget typer(String _text, Color _color) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30,
        color: Colors.black,
      ),
      child: AnimatedTextKit(
        totalRepeatCount: 1,
        animatedTexts: [
          TypewriterAnimatedText(
            _text,
            speed: const Duration(milliseconds: 50),
          ),
        ],
      ),
    ),
  );
}
