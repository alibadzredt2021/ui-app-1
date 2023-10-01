import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ui_app_1/app/modules/dashbaord/views/dashbaord_view.dart';
import 'package:ui_app_1/app/modules/login/views/login_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: const [
                DashbaordView(),
                LoginView(),
                LoginView(),
                LoginView(),
              ],
            ),
          ),
          bottomNavigationBar: ConvexAppBar(
            onTap: controller.changeTabIndex,
            backgroundColor: Colors.green,
            activeColor: const Color.fromARGB(255, 48, 48, 48),
            elevation: 0,
            items: [
              _bottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.home),
                label: 'Home',
              ),
              _bottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.timer_fill),
                label: 'Pengajuan',
              ),
              _bottomNavigationBarItem(
                icon: const Icon(Icons.wallet),
                label: 'Pesan',
              ),
              _bottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.person),
                label: 'Akun',
              ),
            ],
          ),
        );
      },
    );
  }

  _bottomNavigationBarItem({required Widget icon, required String label}) {
    return TabItem(
      icon: icon,
      title: label,
    );
  }
}
