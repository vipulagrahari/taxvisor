import 'package:flutter/material.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:getwidget/getwidget.dart';
import 'package:taxvisor/pages/intro1.dart';
import 'package:taxvisor/widgets/selector.dart';

//White hex FBFAF5

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of the application.

        primarySwatch: Colors.indigo,
      ),
      home: const MyHomePage(title: 'Welcome!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
        title: Text(widget.title,
            style: const TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: ListView(
        children: [
          rt("HI!"),
          typer(
              'Our Job is to get to know you at first, so can you fill these sections please?'),
          inputbox('Enter name', 'Name cannot be Empty'),
          const GFAccordion(
            title: 'Tip',
            titlePadding: EdgeInsets.all(10),
            content: 'Use a smaller name for aesthetic resons :)',
          ),
          const selector(
            userVal: [
              'Male',
              'female',
              'Senior Citizen',
              'Super Senior Citizen',
              'Other',
              'none'
            ],
          ),
          const selector(userVal: [
            'Individual',
            'Small Company',
            'Large Industry',
            'none'
          ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const intro1()));
        },
        backgroundColor: Colors.black,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
