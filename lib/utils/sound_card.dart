import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SoundCard extends StatefulWidget {
  const SoundCard({
    Key? key,
    required this.image, required this.sound
  }) : super(key: key);

  final String image;
  final String sound;
  @override
  State<SoundCard> createState() => _SoundCardState();
}

class _SoundCardState extends State<SoundCard> {
  final AudioCache _audioCache = AudioCache();
  final AudioPlayer _audioPlayer = AudioPlayer();

  bool isPlaying = false;

  void playStop() async {

      if (isPlaying) {
        String audioasset = widget.sound;
        ByteData bytes = await rootBundle.load(audioasset); //load sound from assets
        Uint8List  soundbytes = bytes.buffer.asUint8List(bytes.offsetInBytes, bytes.lengthInBytes);
        int result = await _audioPlayer.playBytes(soundbytes);
        if(result ==1){}
      }
      else{
        int result = await _audioPlayer.stop();
        if (result ==1 ) {
        }  
      }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20,0,20,20),
      child: Container(
        padding: const EdgeInsets.only(right: 10, bottom: 10),
        alignment: Alignment.bottomRight,
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 3,
              blurRadius: 5,
            )
          ],
          image: DecorationImage(image: AssetImage(widget.image,), fit: BoxFit.cover),
        ),
        child: IconButton(
          icon: Icon(
            isPlaying ? Icons.stop_circle : Icons.play_circle_fill_rounded,
            color: Colors.white,
            size: 40,
          ), onPressed: (){
            setState(() {
              isPlaying =! isPlaying;
              playStop();
            });
        },
        ),
      ),
    );
  }
}