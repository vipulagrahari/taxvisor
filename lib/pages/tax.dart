// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:taxvisor/classes/calculate.dart';
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text(" Go bac ", style: TextStyle(color: Color(0xffFFFFFF))),
      //   centerTitle: true,
      //   backgroundColor: const Color(0xff000000),
      // ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff5f72be),
              Color(0xff9921e8),
            ],
          ),
        ),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "Your income tax to be paid this month is via 'Old Scheme' is ",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "\n Rs ${calculateTaxAsPerOldRules(widget.newuser.CalculateIncome(), widget.newuser.CalculateDeduction())}\n",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            // backgroundColor: Color(0xffFBFAF5),
                            letterSpacing: 5,
                            fontSize: 55,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "\nAnd Your income tax to be paid this month via the 'New Scheme' is ",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      TextSpan(
                        text:
                            "\nRs ${calculateTaxAsPerNewRules(widget.newuser.CalculateIncome())} ",
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            letterSpacing: 5,
                            fontSize: 55,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100),
        child: FloatingActionButton.extended(
          onPressed: () => Navigator.push<void>(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => deductions(
                newuser: widget.newuser,
              ),
            ),
          ),
          label: const Text("Learn about Possible Deductions"),
          backgroundColor: Colors.black,
          elevation: 10,
          splashColor: Colors.white,
        ),
      ),
    );
  }
}
