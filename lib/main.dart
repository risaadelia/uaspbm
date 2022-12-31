import 'package:smstorerisa/desainku.dart';
import 'package:flutter/material.dart';
import 'package:smstorerisa/productsatu.dart';
import 'package:smstorerisa/productdua.dart';
import 'package:smstorerisa/producttiga.dart';
import 'package:smstorerisa/productempat.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( scaffoldBackgroundColor: Color.fromARGB(255, 132, 255, 0),
      ),
      home: DesainKu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

