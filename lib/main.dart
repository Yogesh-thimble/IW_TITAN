// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tieappathon/pages/Course_details.dart';
import 'package:tieappathon/pages/Internship_page.dart';
import 'package:tieappathon/pages/certificate.dart';
import 'package:tieappathon/pages/credits_page.dart';
import 'package:tieappathon/pages/home_page.dart';
import 'package:tieappathon/pages/login_page.dart';
import 'package:tieappathon/pages/profile_page.dart';
import 'package:tieappathon/pages/register_page.dart';
import 'package:tieappathon/pages/shorts.dart';
import 'package:tieappathon/pages/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "",),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
            left: -size.width * 0.3,
            top: -size.width * 0.64,
            height: size.height * 0.85,
            child: Image.asset("lib/assets/Leaf.png")),
        Positioned(
            left: size.width * 0.157,
            top: size.width * 0.15,
            height: size.height * 0.5,
            child: Image.asset("lib/assets/HomeImage.png")),
        Positioned(
            left: size.width * 0.25,
            top: size.width * 1.2,
            child: Container(
                child: Column(
              children: const [
                Text("Hello and \nwelcome here!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 35,
                        fontFamily: "OleoScript")),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Here you can learn something\nnew everyday",
                  textAlign: TextAlign.center,
                ),
              ],
            ))),
        Positioned(
            left: size.width * 0.35,
            top: size.width * 1.63,
            child: TextButton(
              child: const SizedBox(
                  width: 100,
                  height: 20,
                  child: Center(
                      child: Text(
                    "Start",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ))),
              onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(222, 248, 92, 49)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                              color:
                                  const Color.fromARGB(222, 249, 123, 87))))),
            ))
      ],
    ));
  }
}
