// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class selector extends StatefulWidget {
  final List<String> userVal;
  const selector({Key? key, required this.userVal}) : super(key: key);

  @override
  State<selector> createState() => _selectorState();
}

/// This is the private State class that goes with selector.
class _selectorState extends State<selector> {
  String dropdownValue = 'none';
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        child: DropdownButton<String>(
          value: dropdownValue,
          dropdownColor: const Color(0xffFBFAF5),
          borderRadius: BorderRadius.circular(40),
          icon: const Icon(Icons.arrow_downward),
          iconSize: 20,
          isExpanded: true,
          elevation: 0,
          alignment: AlignmentDirectional.center,
          style: const TextStyle(color: Colors.deepPurple),
          underline: Container(
            height: 5,
            color: Colors.deepPurpleAccent,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: widget.userVal.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ));
  }
}
