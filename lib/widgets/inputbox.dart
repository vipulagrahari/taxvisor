// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class inputbox extends StatefulWidget {
  final String a, b;
  final userCallback;
  final keyboardType;
  final bool returnnum;
  final TextEditingController myController;
  inputbox(
      {Key? key,
      required this.a,
      required this.b,
      required this.userCallback,
      required this.keyboardType,
      required this.returnnum,
      required this.myController})
      : super(key: key);

  @override
  State<inputbox> createState() => _inputboxstate();
}

class _inputboxstate extends State<inputbox> {
  // final myController = widget.myController;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    widget.myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          autofocus: false,
          controller: widget.myController,
          keyboardType: widget.keyboardType,
          onChanged: widget.userCallback(widget.returnnum
              ? (widget.myController.text).isEmpty
                  ? 0
                  : int.parse(widget.myController.text)
              : widget.myController.text),
          decoration: InputDecoration(
            filled: true,
            labelText: widget.a,
            fillColor: Colors.white.withAlpha(100),
            prefixIcon: const Icon(Icons.person),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25.0),
              // borderSide: const BorderSide(),
            ),
            suffixIcon: IconButton(
              icon: const Icon(Icons.circle),
              onPressed: widget.userCallback(widget.returnnum
                  ? (widget.myController.text).isEmpty
                      ? 0
                      : int.parse(widget.myController.text)
                  : widget.myController.text),
            ),
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return widget.b;
            } else {
              return null;
            }
          },
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            color: Colors.black,
          )),
        ));
  }
}
