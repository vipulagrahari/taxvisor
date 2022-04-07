import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:taxvisor/pages/learnmodule.dart';

class ResourcePage extends StatelessWidget {
  const ResourcePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Learning Resources",
            style: TextStyle(color: Color(0xffFFFFFF))),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xff8e9eab), Color(0xffeef2f3)])),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const learnmodule(content: " something \n new"),
                    ),
                  );
                },
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 3),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
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
        ),
      ),
    ); // This trailing comma makes auto-formatting nicer for build methods.
  }
}
