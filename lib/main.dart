import 'package:flutter/material.dart';
import 'package:taxvisor/dashboard.dart';
//White hex FBFAF5

void main() {
  // final User newuser = User();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // final newuser = User();
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of the application.

          primarySwatch: Colors.indigo,
          fontFamily: "Poppins",
          appBarTheme: const AppBarTheme(
            color: Color(0xff94c997),
            titleTextStyle: TextStyle(color: Colors.black),
          ),
        ),
        home: DashboardPage()
        //  MyHomePage(title: 'Welcome!', newuser: User()),
        );
  }
}
