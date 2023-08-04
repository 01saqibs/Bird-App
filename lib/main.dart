import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled/model/notes_model.dart';
import 'package:untitled/pages/intro.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(NotesModelAdapter());
  // Hive.registerAdapter(NotesModelAdapter());
  Hive.openBox<NotesModel>('notes');
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // navigation bar color
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,// status bar color
  ));

  runApp(const MyApp());}
class MyApp extends StatefulWidget {


  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "Montserrat"),
      home: const IntroPage(),
      // home: Stack(
      //   children: const [
      //
      //     // NavBar(),
      //     // HomePage(),
      //   ],
      // ),
    );

  }
}

