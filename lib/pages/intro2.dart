// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:taxvisor/pages/tax.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpensesPage extends StatefulWidget {
  ExpensesPage({Key? key, required this.newuser}) : super(key: key);
  User newuser;
  @override
  State<ExpensesPage> createState() => _expensesPagestate();
}

class _expensesPagestate extends State<ExpensesPage> {
  final ELSSController = TextEditingController();

  final PPFController = TextEditingController();
  final lifeinsuranceController = TextEditingController();

  final medicalInsuranceController = TextEditingController();

  final nationalPensionSchemeController = TextEditingController();

  final totalDonationsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
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
            headerRichtext("A few more things :)"),
            typer('Your monthly expenses or investments?', Colors.black),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: ELSSController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "ELSS Mutual Fund",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: PPFController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Public Provident Fund",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: lifeinsuranceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Life Insurance",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: medicalInsuranceController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Medical Insurance",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: nationalPensionSchemeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "National Pension Scheme",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: totalDonationsController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Total Donations",
                  fillColor: Colors.white.withAlpha(100),
                  prefixIcon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Enter a valid number";
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.newuser.SetELSS =
              ELSSController.text.isEmpty ? 0 : int.parse(ELSSController.text);
          widget.newuser.SetPPF =
              PPFController.text.isEmpty ? 0 : int.parse(PPFController.text);
          widget.newuser.SetLifeInsurance = lifeinsuranceController.text.isEmpty
              ? 0
              : int.parse(lifeinsuranceController.text);
          widget.newuser.SetMedicalInsurance =
              medicalInsuranceController.text.isEmpty
                  ? 0
                  : int.parse(medicalInsuranceController.text);
          widget.newuser.SetNationalPensionScheme =
              nationalPensionSchemeController.text.isEmpty
                  ? 0
                  : int.parse(nationalPensionSchemeController.text);
          widget.newuser.SetTotalDonations =
              totalDonationsController.text.isEmpty
                  ? 0
                  : int.parse(totalDonationsController.text);

          Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => tax(
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
