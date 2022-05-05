import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textStyleWidget(String a) {
  return Container(
      padding: const EdgeInsets.all(20),
      child: RichText(
          text: TextSpan(
        text: a,
        style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
          fontSize: 50,
          color: Colors.black,
        )),
      )));
}
