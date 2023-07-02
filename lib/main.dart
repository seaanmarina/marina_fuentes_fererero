import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marina_fuentes_fererero/screens/TabBarScreen.dart';
import 'package:marina_fuentes_fererero/widgets/MyCart.dart';
import 'package:marina_fuentes_fererero/screens/StoreScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: TabBarScreen());
  }
}
