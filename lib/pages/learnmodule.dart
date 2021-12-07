import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class learnmodule extends StatelessWidget {
  final String content;
  // static String videoID = 'dFKhWe2bBkM';

  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines

  // final YoutubePlayerController _controller = YoutubePlayerController(
  //   initialVideoId: videoID,
  //   flags: const YoutubePlayerFlags(
  //     autoPlay: false,
  //     mute: false,
  //   ),
  // );

  const learnmodule({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFFFF00),
        appBar: AppBar(
          title: const Text(" ", style: TextStyle(color: Color(0xffFFFFFF))),
          centerTitle: true,
          backgroundColor: const Color(0xff000000),
        ),
        body: RichText(
            text: TextSpan(
          text: content,
          style: GoogleFonts.quicksand(
              textStyle: const TextStyle(
            fontSize: 10,
            color: Colors.black,
          )),
        )));
  }
  // YoutubePlayer(
  //     controller: _controller,
  //     liveUIColor: Colors.amber,
  //     showVideoProgressIndicator: true,
  //   ),
  // ); // This trailing comma makes auto-formatting nicer for build methods.
}
