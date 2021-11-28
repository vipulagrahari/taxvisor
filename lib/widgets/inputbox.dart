import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputbox(String a, String b) {
  return Container(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          labelText: a,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.person),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: const BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return b;
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        style: GoogleFonts.quicksand(
            textStyle: const TextStyle(
          color: Colors.black,
        )),
      ));
}
