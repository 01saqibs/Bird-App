import 'package:flutter/material.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({Key? key}) : super(key: key);

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
                ]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.10,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.pinkAccent.withOpacity(0.80),
                            Colors.purple.withOpacity(0.80),
                          ]),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: Center(
                          child: Text(
                            "Information",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                letterSpacing: 3,
                                fontWeight: FontWeight.bold
                            ),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 35),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 25,
                        )),
                  )
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                  child: Container(
                    padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent.withOpacity(0.2),
                          blurRadius: 8,
                          spreadRadius: 8,
                        )
                      ],
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white
                    ),

                    child: Column(
                      children: [
                        const Text("inzi & Ibrahim", style: TextStyle(
                          color: Colors.pinkAccent, fontSize: 24, fontWeight: FontWeight.bold,
                        ),),
                        const SizedBox(height: 10,),
                        Text("We are youtubers and we upload videos of our birds. We are bird lovers, we enjoy living our life with our birds. We daily upload bird videos on our youtube channel. you may check our youtube channel. if you are a bird lover then download this app.", style: TextStyle(
                          color: Colors.pinkAccent.shade100, fontSize: 16,
                        ),
                        textAlign: TextAlign.justify,),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
}}
