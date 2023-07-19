import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practise_basket_app/screen/pages.dart';
import 'package:practise_basket_app/shared/playerInfo.dart';
import 'package:practise_basket_app/shared/playerList_info.dart';
import 'screen/home/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const pages(),
    );
  }
}

