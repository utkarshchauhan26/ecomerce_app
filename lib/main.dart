import 'package:ecomerce_app/models/cart.dart';
import 'package:ecomerce_app/pages/IntroPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ChangeNotifierProvider(
      create: (context)=>Cart(),
    builder: (context,child)=>const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroPage(),
    ),);
  }
}