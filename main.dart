import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'signup.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
            bodyText2: TextStyle(
          fontFamily: 'poppins',
        )),
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.black,
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.white)),
      ),
      home: intro(),
      debugShowCheckedModeBanner: false,
    );
  }
}
