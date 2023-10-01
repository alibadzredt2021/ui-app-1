import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackgroundComponent extends StatelessWidget {
  const BackgroundComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: Get.height * 0.3,
          width: Get.width * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 34, 78, 17),
                Colors.green,
              ]),
              borderRadius:
                  BorderRadius.only(bottomLeft: Radius.circular(250))),
        ),
        Container(
          height: Get.height * 0.3,
          width: Get.width * 1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 34, 78, 17),
                Colors.green,
              ]),
              borderRadius: BorderRadius.only(topRight: Radius.circular(250))),
        ),
      ],
    );
  }
}
