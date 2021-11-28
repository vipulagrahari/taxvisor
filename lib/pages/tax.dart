// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:taxvisor/classes/calculate.dart';
import 'package:taxvisor/widgets/button.dart';
import 'package:getwidget/getwidget.dart';

class tax extends StatefulWidget {
  // final User newuser;
// required this.newuser beside the key
  const tax({
    Key? key,
  }) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<tax> createState() => _taxstate();
}

class _taxstate extends State<tax> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     // This call to setState tells the Flutter framework that something has
  //     // changed in this State, which causes it to rerun the build method below
  //     // so that the display can reflect the updated values. If we changed
  //     // _counter without calling setState(), then the build method would not be
  //     // called again, and so nothing would appear to happen.
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(" ", style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
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
                  text: "\nRs 1283928 \n",
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
                  text: "\nRs 1213218 ",
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
                onPressed: () {},
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
        onPressed: () {},
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
