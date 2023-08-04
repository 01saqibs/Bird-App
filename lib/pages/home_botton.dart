import 'package:flutter/material.dart';
import '../utils/categories_data.dart';
import 'nav_bar.dart';
class HomeBotton extends StatelessWidget {
  const HomeBotton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("B   I   R   D   Y", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pinkAccent.withOpacity(0.79),
                  Colors.purple.withOpacity(0.79),
                ]
            ),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 9,
        child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
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
                child: const CategoriesTabBar(),
              ),
              const Divider(
                height: 0,
                thickness: 3,
              ),
              const CategoriesData(),
            ],
          ),
        ),
      ),
    );
  }
}
