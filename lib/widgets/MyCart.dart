import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
        color: Color.fromRGBO(150, 131, 236, 1),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    ));
  }
}
