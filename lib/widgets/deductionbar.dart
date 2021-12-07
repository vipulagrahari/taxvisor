// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// import 'package:taxvisor/classes/insert.dart';
import 'package:google_fonts/google_fonts.dart';

class deductionbar extends StatelessWidget {
  // final User newuser;
  final String a;
  const deductionbar({Key? key, required this.a}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white70,
        border: Border.all(color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: RichText(
          text: TextSpan(
              text: a,
              style: GoogleFonts.quicksand(
                  textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )))),
    );
  }
}
