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
              return Center(
                child: Card(
                  color: storeController.colores[index],
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: MediaQuery.of(context).size.height / 6,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          storeController.tiposDeClases[index].toString(),
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
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
