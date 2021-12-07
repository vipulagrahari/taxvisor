import 'package:flutter/material.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:getwidget/getwidget.dart';
import 'package:taxvisor/pages/intro1.dart';
import 'package:taxvisor/widgets/selector.dart';
import 'package:taxvisor/classes/insert.dart';
//White hex FBFAF5

void main() {
  // final User newuser = User();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final newuser = User();
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
      home: MyHomePage(title: 'Welcome!', newuser: User()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title, required this.newuser})
      : super(key: key);

  final User newuser;
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name = 'nothing yet';

  final nameController = TextEditingController();

  namecallback(newinput) {
    name = newinput;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
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
          inputbox(
            a: 'Enter name',
            b: 'Name cannot be Empty',
            keyboardType: TextInputType.name,
            userCallback: namecallback,
            returnnum: false,
            myController: nameController,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.newuser.SetName = name;
              });
            },
            child: const Text("press"),
          ),
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
          setState(() {
            // nameController.dispose();
            widget.newuser.SetName = name;
          });
          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => intro1(
                        newuser: widget.newuser,
                      )));
        },
        backgroundColor: Colors.black,
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
