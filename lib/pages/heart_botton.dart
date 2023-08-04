import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';

class HeartButton extends StatefulWidget {
  const HeartButton({Key? key}) : super(key: key);

  @override
  State<HeartButton> createState() => _HeartButtonState();
}

class _HeartButtonState extends State<HeartButton> {
  String home = "Home Screen",
      lock = "Lock Screen",
      both = "Both Screen",
      system = "System";

  late Stream<String> progressString;
  late String res;
  bool downloading = false;
  List<String> images = [
    "https://images.pexels.com/photos/6796539/pexels-photo-6796539.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12914808/pexels-photo-12914808.png?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5279589/pexels-photo-5279589.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1921336/pexels-photo-1921336.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/12598146/pexels-photo-12598146.jpeg?auto=compress&cs=tinysrgb&w=600",
  ];
  var result = "Waiting to set wallpaper";
  bool _isDisable = true;

  int nextImageID = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: downloading
                ? imageDownloadDialog()
                : Image.network(
              images[nextImageID],
              fit: BoxFit.cover,
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () async{
                        setState(() {
                          nextImageID = Random().nextInt(images.length);
                          _isDisable = true;

                        });},
                      child: Container(
                        width: 50, height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(child: Text("Next")),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    GestureDetector(
                      onTap: () async{
                        return await downloadImage(context);
                      },
                      child: Container(
                        width: 50, height: 50,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: const Center(child: Icon(Icons.download)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: _isDisable
                            ? null
                            : () async {
                          var width = MediaQuery.of(context).size.width;
                          var height = MediaQuery.of(context).size.height;
                          home = await Wallpaper.homeScreen(
                              options: RequestSizeOptions.RESIZE_FIT,
                              width: width,
                              height: height);
                          setState(() {
                            downloading = false;
                            home = home;
                          });
                        },
                        child: Text(home),
                      ),
                      ElevatedButton(
                        onPressed: _isDisable
                            ? null
                            : () async {
                          lock = await Wallpaper.lockScreen();
                          setState(() {
                            downloading = false;
                            lock = lock;
                          });
                        },
                        child: Text(lock),
                      ),
                      ElevatedButton(
                        onPressed: _isDisable
                            ? null
                            : () async {
                          both = await Wallpaper.bothScreen();
                          setState(() {
                            downloading = false;
                            both = both;
                          });
                        },
                        child: Text(both),
                      ),
                      ElevatedButton(
                        onPressed: _isDisable
                            ? null
                            : () async {
                          system = await Wallpaper.systemScreen();
                          setState(() {
                            downloading = false;
                            system = system;
                          });
                        },
                        child: Text(system),
                      ),
                    ],
                  ),
                )
              ],
            ),
    ])
    );
  }

  Future<void> downloadImage(BuildContext context) async {
    progressString = Wallpaper.imageDownloadProgress(
        images[nextImageID]

    );
    progressString.listen((data) {
      setState(() {
        res = data;
        downloading = true;
      });
      if (kDebugMode) {
        print("DataReceived: $data");
      }
    }, onDone: () async {
      setState(() {
        downloading = false;

        _isDisable = false;
      });
      if (kDebugMode) {
        print("Task Done");
      }
    }, onError: (error) {
      setState(() {
        downloading = false;
        _isDisable = true;
      });
      if (kDebugMode) {
        print("Some Error");
      }
    });
  }

  Widget imageDownloadDialog() {
    return Container(
      color: Colors.transparent,
      height: 120.0,
      width: 200.0,
      child: Card(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircularProgressIndicator(),
            const SizedBox(height: 20.0),
            Text(
              "Downloading File : $res",
              style: const TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
