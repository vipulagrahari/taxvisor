import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff2A363B),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("About us, and a few things..",
            style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        // backgroundColor: const Color(0xff2A363B),
      ),
      body: Container(
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
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Card(
            // color: Color(0xffEAD1A1),
            color: Colors.black,
            elevation: 10,
            child: Center(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "This app has been developed by the students of Shri Ram Institute of Technology as a minor project in Computer Science. \n\nOur teachers and intructors played a very important role in the inception and creation of this project. \n\nThe Development team included \n - Vipul Agrahari, Om singh, Aryan Jain, Parag Jain. \n\nDue to our local Jursidiction and Legal options, we cannot give healthy and effective investment advice as that would be illegal in a sense and we would be liable for any financial damages our users may incur from our advice. Please contact an investment advisor or a professional for any of your advisory needs. \n\nThe source code for this app is open sourced and can be accessed at \n\n - github.com/vipulagrahari/taxvisor",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))),
          ),
        ),
      ),
    );
  }
}
