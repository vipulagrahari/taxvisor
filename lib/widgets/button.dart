import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

Widget nextButtonPills() {
  return GFButton(
    onPressed: () {},
    text: "Learn about more possible Deductions?",
    shape: GFButtonShape.pills,
    blockButton: true,
    size: GFSize.LARGE,
    buttonBoxShadow: true,
    type: GFButtonType.solid,
    color: GFColors.DARK,
  );
}
