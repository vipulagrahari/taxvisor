// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:taxvisor/classes/calculate.dart';
// import 'package:taxvisor/widgets/button.dart';
import 'package:getwidget/getwidget.dart';
import 'package:taxvisor/pages/deductions.dart';
import 'package:taxvisor/pages/learn.dart';

class tax extends StatefulWidget {
  final User newuser;

  const tax({Key? key, required this.newuser}) : super(key: key);

  @override
  State<tax> createState() => _taxstate();
}

class _taxstate extends State<tax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
        title: const Text(" ", style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text:
                      "Your income tax to be paid this month is via 'Old Scheme' is ",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ))),
              TextSpan(
                  text:
                      "\n${calculateTaxAsPerOldRules(widget.newuser.CalculateIncome(), widget.newuser.CalculateDeduction())}\n",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                    backgroundColor: Color(0xffFBFAF5),

                    fontSize: 55,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))),
              TextSpan(
                  text:
                      "And your income tax to be paid this month via the 'New Scheme' is ",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                  ))),
              TextSpan(
                  text:
                      "\n${calculateTaxAsPerNewRules(widget.newuser.CalculateIncome())} ",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                    backgroundColor: Color(0xffFBFAF5),
                    fontSize: 55,
                    // fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ))),
            ])),
          ),
          Container(
              padding: const EdgeInsets.all(40),
              child: GFButton(
                onPressed: () {
                  Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => deductions(
                                newuser: widget.newuser,
                              )));
                },
                text: "Learn about more possible Deductions?",
                shape: GFButtonShape.pills,
                blockButton: true,
                size: GFSize.LARGE,
                buttonBoxShadow: true,
                type: GFButtonType.solid,
                color: GFColors.DARK,
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const learn()));
        },
        backgroundColor: Colors.black,
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
