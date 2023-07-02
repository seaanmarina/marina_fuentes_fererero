import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  MyCard({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
        color: Color.fromRGBO(150, 131, 236, 1),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text(title)),
        ),
      ),
    ));
  }
}
