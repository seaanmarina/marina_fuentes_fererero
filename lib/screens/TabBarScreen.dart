import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:marina_fuentes_fererero/controllers/TabBarController.dart';
import 'package:marina_fuentes_fererero/screens/OtherScreen.dart';
import 'package:marina_fuentes_fererero/screens/StoreScreen.dart';
import 'package:flutter/cupertino.dart';

class TabBarScreen extends StatelessWidget {
  final controller = Get.put(TabBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.tabIndex.value,
          children: [
            OtherScreen(),
            OtherScreen(),
            OtherScreen(),
            StoreScreen(),
            OtherScreen()
          ],
        ),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.tabIndex.value,
          onTap: (index) => controller.tabIndex.value = index,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_rounded),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.chart_bar_fill,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 30.0,
              ),
              label: 'Progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.cart_fill,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 30.0,
              ),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.ellipsis,
                color: Color.fromARGB(255, 114, 114, 114),
                size: 30.0,
              ),
              label: 'Menu',
            ),
          ],
        ),
      ),
    );
  }
}
