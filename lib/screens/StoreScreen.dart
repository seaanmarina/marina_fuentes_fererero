import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:marina_fuentes_fererero/controllers/StoreController.dart';
import 'package:flutter/cupertino.dart';

class StoreScreen extends StatelessWidget {
  StoreScreen({super.key});
  final storeController = StoreController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 150.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Store',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  CupertinoIcons.bell_fill,
                  color: Color.fromARGB(255, 114, 114, 114),
                  size: 30.0,
                ),
                onPressed: () {/* ... */},
              ),
              IconButton(
                icon: const Icon(
                  CupertinoIcons.person_fill,
                  color: Color.fromARGB(255, 114, 114, 114),
                  size: 30.0,
                ),
                onPressed: () {/* ... */},
              ),
            ]),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isOdd ? Colors.white : Colors.black12,
                height: 100.0,
                child: Center(
                  child: Text(storeController.tiposDeClases[index].toString()),
                ),
              );
            },
            childCount: storeController.tiposDeClases.length,
          ),
        ),
      ],
    ));
  }
}
