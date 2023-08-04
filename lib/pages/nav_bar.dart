import 'package:flutter/material.dart';
import 'package:untitled/hive_database/add_data.dart';
import 'package:untitled/pages/images.dart';
import 'package:untitled/pages/personal_information.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.purple.withOpacity(0.79),
              Colors.purple.withOpacity(0.000),
            ]),
      ),
      child: Drawer(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 10),
          child: ListView(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                accountName: Text("Inzi or Ibrahim", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                accountEmail: Text("Inzamam Khan & Ibrahim Khan"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image(
                      image: AssetImage('assets/images/sliderImages/pic.jpg'),
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.add_circle, color: Colors.white,),
                title: const Text("Save Data", style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> const AddData()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.info,color: Colors.white,),
                title: const Text("Personal Info",style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalInformation()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.image,color: Colors.white,),
                title: const Text("Images",style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Images()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.backspace_rounded,color: Colors.white,),
                title: const Text("Exits",style: TextStyle(color: Colors.white),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
