import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:taxvisor/pages/learnmodule.dart';

class ResourcePage extends StatefulWidget {
  const ResourcePage({Key? key}) : super(key: key);

  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  List _dataItems = [];
  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Learning Resources",
          style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.normal,
              color: Color(0xffFFFFFF),
              fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff8e9eab), Color(0xffeef2f3)])),
        child: Center(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 12,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => LearnModule(
                      title: _dataItems[index][0],
                      youtubeID: _dataItems[index][1],
                      content: _dataItems[index][2],
                    ),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 3),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                // color: Colors.black,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text('${index + 1}',
                        style: const TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ),
            staggeredTileBuilder: (int index) =>
                StaggeredTile.count(2, index.isEven ? 2 : 1),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
          ),
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }

  Future readJson() async {
    final String response =
        await rootBundle.loadString("assets/data/modules.json");
    final data = await jsonDecode(response);
    setState(() {
      _dataItems = data['data'];
    });
  }
}
