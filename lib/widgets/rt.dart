import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget headerRichtext(String a) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: RichText(
      text: TextSpan(
        text: a,
        style: GoogleFonts.quicksand(
          textStyle: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),
    ),
  );
}
