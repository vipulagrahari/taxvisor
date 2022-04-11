import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class LearnModule extends StatelessWidget {
  late String youtubeID;
  late String title;
  late String content;
  LearnModule(
      {Key? key,
      required this.title,
      required this.youtubeID,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    String? myId = YoutubePlayer.convertUrlToId(youtubeID);
    final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: myId as String,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.bold,
            color: Color(0xffFFFFFF),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff000000),
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white70,
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [Color(0xff8e9eab), Color(0xffeef2f3)],
        //   ),
        // ),
        child: Column(
          // height: height / 3,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: YoutubePlayer(
                  controller: _controller,
                  liveUIColor: Colors.red,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    content,
                    textAlign: TextAlign.start,
                    style: const TextStyle(fontSize: 23, fontFamily: "Poppins"),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  } // This trailing comma makes auto-formatting nicer for build methods.
}
