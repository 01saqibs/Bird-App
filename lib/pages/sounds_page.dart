import 'package:flutter/material.dart';
import 'package:untitled/utils/data_class.dart';
import 'package:untitled/utils/sound_card.dart';

class SoundPage extends StatefulWidget {
  const SoundPage({Key? key}) : super(key: key);

  @override
  State<SoundPage> createState() => _SoundPageState();
}

class _SoundPageState extends State<SoundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white12,
                  Color(0xFFF1B8D6),
                ]
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 35),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.10,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pinkAccent.withOpacity(0.80),
                        Colors.purple.withOpacity(0.80),
                      ]
                  ),
                ),
                child: const Center(child: Text("Sounds", style: TextStyle(fontWeight: FontWeight.normal, fontSize: 22, color: Colors.white),)),
              ),
              const Divider(
                height: 0,
                thickness: 3,
              ),
              Expanded(child: ListView.builder(
              scrollDirection: Axis.vertical
                  ,itemCount: sounds.length,itemBuilder: (context, index) => SoundCard(image: sounds[index].icon, sound: sounds[index].sound,)))
            ],
          ),
        )
    );
  }
}
