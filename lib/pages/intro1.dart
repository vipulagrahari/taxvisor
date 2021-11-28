// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:taxvisor/pages/intro2.dart';
import 'package:getwidget/getwidget.dart';

class intro1 extends StatefulWidget {
  const intro1({
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
  State<intro1> createState() => _intro1state();
}

class _intro1state extends State<intro1> {
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
          rt("Just a few things ;)"),
          typer('Your income sources?'),
          // const GFAccordion(
          //   title: 'Tip!',
          //   content: 'For the Fields not known, use 0',
          // ),
          inputbox('Salary', 'Cannot be Empty, Use 0'),
          // typer('House Rent Allowance?'),
          inputbox('House Rent Allowance', 'Cannot be Empty, Use 0'),
          inputbox('Income from Interest', 'Cannot be Empty, Use 0'),
          inputbox('Income from Rent', 'Cannot be Empty, Use 0'),
          inputbox('Capital Gains', 'Cannot be Empty, Use 0'),
          inputbox('Income from Other Sources', 'Cannot be Empty, Use 0'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const intro2()));
        },
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
