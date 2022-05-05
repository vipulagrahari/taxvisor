// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:taxvisor/dashboard.dart';
import 'package:taxvisor/widgets/deductionbar.dart';
import 'package:taxvisor/widgets/rt.dart';

class deductions extends StatefulWidget {
  final User newuser;
  const deductions({Key? key, required this.newuser}) : super(key: key);

  @override
  _deductionsState createState() => _deductionsState();
}

class _deductionsState extends State<deductions> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
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
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Here are some ways to help you deduct tax",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Poppins",
                    fontSize: 36,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Spacer(),
            widget.newuser.GetELSS == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(a: "Equity-linked savings scheme"),
                  )
                : const Text(" "),
            const Text(" "),
            widget.newuser.GetPPF == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(a: "Public Provident Fund"),
                  )
                : const Text(" "),
            const Text(" "),
            widget.newuser.GetLifeInsurance == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(a: "A Good Life Insurance Scheme"),
                  )
                : const Text(" "),
            const Text(" "),
            widget.newuser.GetMedicalInsurance == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(a: "A Good Life Medical Scheme"),
                  )
                : const Text(" "),
            const Text(" "),
            widget.newuser.GetNationalPensionScheme == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(a: "National Pension Scheme"),
                  )
                : const Text(" "),
            const Text(" "),
            widget.newuser.GetTotalDonations == 0
                ? const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: deductionbar(
                        a: "Donations(To a local charity or an NGO)"),
                  )
                : const Text(" "),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => DashboardPage()));
        },
        backgroundColor: Colors.black,
        tooltip: 'Next',
        child: const Icon(Icons.home),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
