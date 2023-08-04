import 'package:flutter/material.dart';
// import 'package:untitled/pages/heart_botton.dart';
import 'package:untitled/pages/home_botton.dart';
import 'package:untitled/pages/sounds_page.dart';
import 'package:untitled/pages/wallpaper_button.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override        
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectIndex = 0;
  List pages = [
    const HomeBotton(),
    const SoundPage(),
    const WallpaperButton(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectIndex],
      bottomNavigationBar: Container(
        height: 60,
          width: MediaQuery.of(context).size.width,
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
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 3),
                child: Divider(
                  height: 0,
                  thickness: 3,
                ),
              ),
              BottomNavigationBar(
                onTap: (int index){
                  setState(() {
                    selectIndex = index;
                  });
                },
                showUnselectedLabels: false,
                showSelectedLabels: false,
                currentIndex: selectIndex,
                backgroundColor: Colors.transparent,
                elevation: 0,
                iconSize: 25,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.black38,
                type: BottomNavigationBarType.fixed,
                items: const [
                  BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
                  BottomNavigationBarItem(label: "sound",icon: Icon(Icons.music_note_rounded)),
                  BottomNavigationBarItem(label: "Favorite",icon: Icon(Icons.wallpaper)),
                ],),
            ],
          )
      ),
    );
  }
}
