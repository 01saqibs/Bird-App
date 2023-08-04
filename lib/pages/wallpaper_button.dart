

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:wallpaper_manager_flutter/wallpaper_manager_flutter.dart';

class WallpaperButton extends StatefulWidget {
  const WallpaperButton({Key? key}) : super(key: key);

  @override
  _WallpaperButtonState createState() => _WallpaperButtonState();
}

class _WallpaperButtonState extends State<WallpaperButton> {
  List <String> imageurl = [
    "https://images.pexels.com/photos/12188368/pexels-photo-12188368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5279463/pexels-photo-5279463.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/10864211/pexels-photo-10864211.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14463675/pexels-photo-14463675.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/10722680/pexels-photo-10722680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11250992/pexels-photo-11250992.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14463722/pexels-photo-14463722.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/14463714/pexels-photo-14463714.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "https://images.pexels.com/photos/14463516/pexels-photo-14463516.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12421152/pexels-photo-12421152.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12421148/pexels-photo-12421148.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11615657/pexels-photo-11615657.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"




  ];
  bool isDisable = true;
  int nextImage = 0;
  // Image Dimensions are 2400 x 3598

  Future<void> _setwallpaper(location) async {
    var file = await DefaultCacheManager().getSingleFile(imageurl[nextImage]);
    try {
      WallpaperManagerFlutter().setwallpaperfromFile(file, location);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Wallpaper updated'),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Error Setting Wallpaper'),
        ),
      );
      print(e);
    }
  }

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
          children: <Widget>[
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
                  "Wallpaper",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            Expanded(
              child: Stack(
                children: [Image.network(
                      imageurl[nextImage],
                      fit: BoxFit.cover,
                    ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              nextImage = Random().nextInt(imageurl.length);
                              isDisable = true;
                            });
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _setwallpaper(WallpaperManagerFlutter.HOME_SCREEN);
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text('Home Screen',
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _setwallpaper(WallpaperManagerFlutter.LOCK_SCREEN);
                          },
                          child: Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                                child: Text(
                                  'Lock Screen',
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


