import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Learn more about us",
              style: TextStyle(color: Color(0xffFFFFFF))),
          centerTitle: true,
          backgroundColor: const Color(0xff000000),
        ),
        body: const Text("under construction"));
  }
}
