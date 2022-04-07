// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:taxvisor/about_us.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:taxvisor/pages/learn.dart';
import 'package:taxvisor/pages/learnmodule.dart';
import 'package:taxvisor/pages/module_1/first_screen.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class DashboardPage extends StatefulWidget {
  // const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<dynamic> _pages = [
    FirstScreenPage(title: "Welcome to tax module", newuser: User()),
    ResourcePage(),
    AboutUsPage()
  ];
  final List<String> _text = [
    "Hi! Click here to calculate your Taxes.",
    "Wanna learn more about financing? \n \nCome Aboard, Click here.",
    "Visit this to Learn more about us!"
  ];
  Color _myColor = Colors.black;
  Color _textColor = Colors.white;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            colors: [
              Color(0xff5f72be),
              Color(0xff9921e8),
              // Color(0xffb621fe),
            ],
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => _pages[counter]));
          },
          child: Card(
            margin: const EdgeInsets.only(
              right: 50,
              left: 50,
              bottom: 200,
              top: 150,
            ),
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: AnimatedContainer(
              // duration: _myDuration,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _myColor,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                alignment: Alignment.centerLeft,
                child: AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity:
                          Tween<double>(begin: 0, end: 1).animate(animation),
                      child: child,
                    );
                  },
                  child: AnimatedTextKit(
                    key: ValueKey<int>(counter),
                    totalRepeatCount: 1,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        _text[counter],
                        textAlign: TextAlign.center,
                        speed: const Duration(milliseconds: 70),
                        textStyle: TextStyle(
                          letterSpacing: 4,
                          fontFamily: "Poppins",
                          fontSize: 36,
                          color: _textColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
        child: Container(
          height: height / 15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    counter = 0;
                    _myColor = Colors.black;
                    _textColor = Colors.white70;
                  });
                },
                icon: Icon(
                  Icons.attach_money,
                  color: Colors.greenAccent,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    counter = 1;
                    _myColor = Color(0xff292826);
                    _textColor = Color(0xffF9D342);
                  });
                },
                icon: Icon(
                  Icons.menu_book_rounded,
                  color: Colors.red,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    counter = 2;
                    _myColor = Colors.white;
                    _textColor = Colors.black87;
                  });
                },
                icon: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
