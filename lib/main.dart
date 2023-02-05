import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payapp/screens/bottom_bar.dart';

import 'controller/Controller.dart';

void main() {
  Get.put(Controller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.palanquinDarkTextTheme(
            Theme.of(context).textTheme,
          ),
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Backgrounds.png"),
                    fit: BoxFit.fill)),
            child: const BottomBar(),
          ),
        ));
  }
}
