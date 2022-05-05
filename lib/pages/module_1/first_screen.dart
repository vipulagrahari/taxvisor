import 'package:flutter/material.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:getwidget/getwidget.dart';
import 'package:taxvisor/pages/intro1.dart';
import 'package:taxvisor/widgets/selector.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreenPage extends StatefulWidget {
  const FirstScreenPage({Key? key, required this.title, required this.newuser})
      : super(key: key);
  final User newuser;
  final String title;

  @override
  State<FirstScreenPage> createState() => _FirstScreenPageState();
}

class _FirstScreenPageState extends State<FirstScreenPage> {
  // String name = 'nothing yet';

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      // backgroundColor: const Color(0xffFFFF00),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            // begin: Alignment.bottomLeft,
            // end: Alignment.topRight,
            colors: [
              Color(0xff5f72be),
              Color(0xff9921e8),
            ],
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            headerRichtext("Hi there!"),
            typer(
                'Our Job is to get to know you at first, so can you fill these sections please?',
                Colors.black),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: nameController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Enter Name",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Please choose a name";
                  } else {
                    return null;
                  }
                },
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const GFAccordion(
              title: 'click here for a small tip :)',
              titlePadding: EdgeInsets.all(10),
              collapsedTitleBackgroundColor: Colors.transparent,
              expandedTitleBackgroundColor: Colors.transparent,
              content: 'Use a smaller name for aesthetic resons.',
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.newuser.SetName = nameController.text;

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => IncomeSourcesPage(
                newuser: widget.newuser,
              ),
            ),
          );
        },
        backgroundColor: Colors.black,
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
  }
}
