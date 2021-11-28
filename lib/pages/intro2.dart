// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taxvisor/pages/tax.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:getwidget/getwidget.dart';

class intro2 extends StatefulWidget {
  const intro2({
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
  State<intro2> createState() => _intro2state();
}

class _intro2state extends State<intro2> {
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
          rt("A few more things :)"),
          typer('Your monthly expenses?'),
          // const GFAccordion(
          //   title: 'Tip!',
          //   content: 'For the Fields not known, use 0',
          // ),
          inputbox('ELSS Mutual Fund', 'Cannot be Empty, Use 0'),
          inputbox('Public Provident Fund', 'Cannot be Empty, Use 0'),
          inputbox('Life Insurance', 'Cannot be Empty, Use 0'),
          inputbox('Medical Insurance', 'Cannot be Empty, Use 0'),
          inputbox('National Pension Scheme', 'Cannot be Empty, Use 0'),
          inputbox('Total Donations', 'Cannot be Empty, Use 0'),
          inputbox('Home Loan EMIs', 'Cannot be Empty, Use 0')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const tax()));
        },
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
