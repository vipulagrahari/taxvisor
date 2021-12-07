// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:taxvisor/classes/insert.dart';
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
    // int a = widget.newuser.getPossibleDeductions();
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
        title: const Text(" ", style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: ListView(
        children: [
          rt(
            "Here are some available ways in which can help you get deductions",
          ),
          // const deductionbar(a: "Something"),
          const Text(" "),
          widget.newuser.GetELSS == 0
              ? const deductionbar(a: "Equity-linked savings scheme")
              : const Text(" "),
          const Text(" "),
          widget.newuser.GetPPF == 0
              ? const deductionbar(a: "Public Provident Fund")
              : const Text(" "),
          const Text(" "),
          widget.newuser.GetLifeInsurance == 0
              ? const deductionbar(a: "A Good Life Insurance Scheme")
              : const Text(" "),
          const Text(" "),
          widget.newuser.GetMedicalInsurance == 0
              ? const deductionbar(a: "A Good Life Medical Scheme")
              : const Text(" "),
          const Text(" "),
          widget.newuser.GetNationalPensionScheme == 0
              ? const deductionbar(a: "National Pension Scheme")
              : const Text(" "),
          const Text(" "),
          widget.newuser.GetTotalDonations == 0
              ? const deductionbar(a: "Donations(To a local charity or an NGO)")
              : const Text(" "),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //     onPressed: () {
      //       Navigator.push<void>(
      //           context,
      //           MaterialPageRoute<void>(
      //               builder: (BuildContext context) => intro2(
      //                     newuser: widget.newuser,
      //                   )));
      //     },
      //     backgroundColor: Colors.black,
      //     tooltip: 'Next',
      //     child: const Icon(Icons.arrow_forward_ios),
      //   ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
