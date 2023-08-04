import 'package:flutter/material.dart';

import '../utils/data_class.dart';

class BirdsInfo extends StatelessWidget {
  final BirdData data;
  final Category name;
  const BirdsInfo({Key? key, required this.data, required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget gap = const SizedBox(
      height: 15,
    );
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: Expanded(
          child: Column(

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
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Center(
                          child: Text(
                        name.name,
                        style: const TextStyle(
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
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        )),
                  )
                ],
              ),
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          image: DecorationImage(
                              image: AssetImage(data.icon), fit: BoxFit.cover)),
                    ),
                    Container(
                        decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black54,
                          ]),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(25, 40, 30, 25),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Info(
                                        infoName: "Color",
                                        infoType: data.color,
                                      ),
                                      gap,
                                      Info(
                                        infoName: "Size",
                                        infoType: data.sizeOfBird,
                                      ),
                                      gap,
                                      Info(
                                        infoName: "Popular Name",
                                        infoType: data.popularName,
                                      ),
                                      gap,
                                      Info(
                                        infoName: "Food",
                                        infoType: data.food,
                                      ),
                                      gap,
                                      Info(
                                        infoName: "Life Span",
                                        infoType: data.lifeSpan,
                                      ),
                                      gap,
                                      Info(
                                        infoName: "Behavior",
                                        infoType: data.behavior,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 20,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          height: 45,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Colors.pinkAccent.withOpacity(0.80),
                                  Colors.purple.withOpacity(0.80),
                                ]),
                          ),
                          child: Expanded(
                              child: Text(
                            data.name,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 18),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key? key,
    required this.infoName,
    required this.infoType,
  }) : super(key: key);

  final String infoName;
  final String infoType;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        infoName,
        style: const TextStyle(fontSize: 14, color: Colors.black54),
      ),
      const SizedBox(
        height: 2,
      ),
      Text(
        infoType,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.pinkAccent),
      ),
    ]);
  }
}
