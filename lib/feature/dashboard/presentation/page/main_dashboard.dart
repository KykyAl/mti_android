import 'package:brief_project/core/helper/navigator_helper.dart';
import 'package:brief_project/feature/dashboard/controller/dashboard._controller.dart';
import 'package:brief_project/feature/dashboard/presentation/widget/dashboard_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDashBoard extends StatefulWidget {
  const MainDashBoard({super.key});

  @override
  State<MainDashBoard> createState() => _MainDashBoardState();
}

final DashboardBody body = DashboardBody();

class _MainDashBoardState extends State<MainDashBoard> {
  final navigatorHelper = NavigatorHelper();
  final controller = Get.find<DashboardConttoller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body.body(context),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Color.fromARGB(230, 34, 33, 33),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Profile',
            ),
          ],
          currentIndex: controller.currentIndex.value,
          selectedItemColor: Colors.brown,
          onTap: (index) => controller.onItemTapped(index),
        ),
      ),
    );
  }
}