import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  const Images({Key? key}) : super(key: key);

  @override
  State<Images> createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
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
                      "Pictures",
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          letterSpacing: 3,
                          fontWeight: FontWeight.bold),
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
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic1.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic2.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic3.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic4.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic5.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 4,
                              blurRadius: 5,
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: AssetImage(
                                "assets/images/sliderImages/pic6.jpg"),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ],
                  options:
                      CarouselOptions(enlargeCenterPage: true, aspectRatio: 1,
                      )),
            )
          ],
        ),
      ),
    );
  }
}
