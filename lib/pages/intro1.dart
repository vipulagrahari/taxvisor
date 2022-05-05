import 'package:flutter/material.dart';
import 'package:taxvisor/widgets/inputbox.dart';
import 'package:taxvisor/widgets/typer.dart';
import 'package:taxvisor/widgets/rt.dart';
import 'package:taxvisor/pages/intro2.dart';
import 'package:getwidget/getwidget.dart';
import 'package:taxvisor/classes/insert.dart';
import 'package:google_fonts/google_fonts.dart';

class IncomeSourcesPage extends StatefulWidget {
  const IncomeSourcesPage({Key? key, required this.newuser}) : super(key: key);
  final User newuser;

  @override
  State<IncomeSourcesPage> createState() => _IncomeSourcesPagestate();
}

class _IncomeSourcesPagestate extends State<IncomeSourcesPage> {
  final salaryController = TextEditingController();

  final hraController = TextEditingController();

  final bankinterestController = TextEditingController();

  final rentController = TextEditingController();

  final otherController = TextEditingController();

  final cgController = TextEditingController();

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
          shrinkWrap: true,
          children: [
            headerRichtext(
                "Hi, ${widget.newuser.GetName} \nJust a few things ;)"),
            typer('Your income sources?', Colors.black),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                autofocus: false,
                controller: salaryController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Salary",
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
                controller: hraController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Agricultural Income.",
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
                controller: bankinterestController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Income from Interest",
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
                controller: rentController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Income from Rent",
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
                controller: cgController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Capital Gains",
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
                controller: otherController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Income from Other Sources",
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
          widget.newuser.SetNetSalaryIncome = salaryController.text.isEmpty
              ? 0
              : int.parse(salaryController.text);
          widget.newuser.SetHouseRentAllowance =
              hraController.text.isEmpty ? 0 : int.parse(hraController.text);
          widget.newuser.SetIncomeFromBankInterest =
              bankinterestController.text.isEmpty
                  ? 0
                  : int.parse(bankinterestController.text);
          widget.newuser.SetIncomeFromRent =
              rentController.text.isEmpty ? 0 : int.parse(rentController.text);
          widget.newuser.SetIncomeFromOtherSources =
              otherController.text.isEmpty
                  ? 0
                  : int.parse(otherController.text);
          widget.newuser.SetCapitalGains =
              cgController.text.isEmpty ? 0 : int.parse(cgController.text);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => ExpensesPage(
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
}
