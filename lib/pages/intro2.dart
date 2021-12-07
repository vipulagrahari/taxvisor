// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:taxvisor/pages/tax.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:taxvisor/classes/insert.dart';

// import 'package:getwidget/getwidget.dart';

class intro2 extends StatefulWidget {
  final User newuser;
  const intro2({Key? key, required this.newuser}) : super(key: key);

  @override
  State<intro2> createState() => _intro2state();
}

class _intro2state extends State<intro2> {
  int ELSS = 0;
  final ELSSController = TextEditingController();
  int PPF = 0;
  final PPFController = TextEditingController();
  int lifeinsurance = 0;
  final lifeinsuranceController = TextEditingController();
  int medicalInsurance = 0;
  final medicalInsuranceController = TextEditingController();
  int nationalPensionScheme = 0;
  final nationalPensionSchemeController = TextEditingController();
  int totalDonations = 0;
  final totalDonationsController = TextEditingController();

  ELSScallback(value) {
    ELSS = value;
  }

  PPFcallback(value) {
    PPF = value;
  }

  lifeinsurancecallback(value) {
    lifeinsurance = value;
  }

  medicalInsurancecallback(value) {
    medicalInsurance = value;
  }

  nationalPensionSchemecallback(value) {
    nationalPensionScheme = value;
  }

  totalDonationcallback(value) {
    totalDonations = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
        title: const Text(" ", style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: ListView(
        children: [
          rt("A few more things :)"),
          typer('Your monthly expenses?'),
          inputbox(
            a: 'ELSS Mutual Fund',
            b: 'Cannot be Empty, Use 0',
            userCallback: ELSScallback,
            keyboardType: TextInputType.number,
            returnnum: true,
            myController: ELSSController,
          ),
          inputbox(
            a: 'Public Provident Fund',
            b: 'Cannot be Empty, Use 0',
            userCallback: PPFcallback,
            keyboardType: TextInputType.number,
            returnnum: true,
            myController: PPFController,
          ),
          inputbox(
            a: 'Life Insurance',
            b: 'Cannot be Empty, Use 0',
            userCallback: lifeinsurancecallback,
            keyboardType: TextInputType.number,
            returnnum: true,
            myController: lifeinsuranceController,
          ),
          inputbox(
            a: 'Medical Insurance',
            b: 'Cannot be Empty, Use 0',
            userCallback: medicalInsurancecallback,
            keyboardType: TextInputType.number,
            returnnum: true,
            myController: medicalInsuranceController,
          ),
          inputbox(
              a: 'National Pension Scheme',
              b: 'Cannot be Empty, Use 0',
              userCallback: nationalPensionSchemecallback,
              keyboardType: TextInputType.number,
              returnnum: true,
              myController: nationalPensionSchemeController),
          inputbox(
            a: 'Total Donations',
            b: 'Cannot be Empty, Use 0',
            userCallback: totalDonationcallback,
            keyboardType: TextInputType.number,
            returnnum: true,
            myController: totalDonationsController,
          ),
          // inputbox(a: 'Home Loan EMIs', b: 'Cannot be Empty, Use 0')
          ElevatedButton(
            onPressed: () {
              setState(() {
                widget.newuser.SetELSS = ELSS;
                widget.newuser.SetPPF = PPF;
                widget.newuser.SetMedicalInsurance = medicalInsurance;
                widget.newuser.SetNationalPensionScheme = nationalPensionScheme;
                widget.newuser.SetTotalDonations = totalDonations;
                // widget.newuser.SetCapitalGains = cg;
              });
            },
            child: const Text("save"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            widget.newuser.SetELSS = ELSS;
            widget.newuser.SetPPF = PPF;
            widget.newuser.SetMedicalInsurance = medicalInsurance;
            widget.newuser.SetNationalPensionScheme = nationalPensionScheme;
            widget.newuser.SetTotalDonations = totalDonations;
            // widget.newuser.SetCapitalGains = cg;
          });

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
