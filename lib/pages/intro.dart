import 'package:flutter/material.dart';
import 'home_main_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  void initState(){
    super.initState();
    Future.delayed(const Duration(seconds: 1)).then((value) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Color(0xFFF1B8D6),
              ]
          ),),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Image(image: AssetImage("assets/images/background/background.png"),fit: BoxFit.cover,),
            SizedBox(height: 100,),
           Text("WELCOME", style: TextStyle(fontSize: 20, color: Colors.pinkAccent,fontWeight: FontWeight.bold,letterSpacing: 20),),
          ],
        ),
      ),
    );
  }



}

