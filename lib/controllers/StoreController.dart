import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoreController extends GetxController {
  final name = 'Store'.obs;
  final tiposDeClases =
      ['Training Plan', 'Meal Plan', 'Supplement Plan', 'BodyPump Plan'].obs;
  final colores = [
    Color.fromRGBO(255, 0, 157, 1),
    Color.fromRGBO(53, 238, 53, 1),
    Color.fromRGBO(133, 103, 218, 1),
    Color.fromRGBO(255, 191, 54, 1)
  ].obs;
}
