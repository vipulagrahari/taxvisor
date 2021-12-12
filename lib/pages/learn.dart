import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:taxvisor/pages/learnmodule.dart';

class learn extends StatelessWidget {
  learn({Key? key}) : super(key: key);

  final headerList = [
    "Header 1",
    "Header 2",
    "Header 3",
    "Header 4",
    "Header 5",
    "Header 6",
    "Header 7",
    "Header 8"
  ];
  final colorList = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFF00),
      appBar: AppBar(
        title:
            const Text("Modules", style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: Center(
        child: StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) => GestureDetector(
            onTap: () {
              Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const learnmodule(
                        content: " something \n new \n siahdaoi"),
                  ));
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
                )),
          ),
          staggeredTileBuilder: (int index) =>
              StaggeredTile.count(2, index.isEven ? 2 : 1),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          padding: const EdgeInsets.only(left: 10, top: 70, right: 10),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        tooltip: 'Next',
        child: const Icon(Icons.cancel_outlined),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
