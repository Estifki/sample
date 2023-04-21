import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/screen/home.dart';

void main() {
  runApp(MyApp());
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.blue.shade300));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
