import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app_1/app/components/background_component.dart';
import 'package:ui_app_1/app/components/card_user_component.dart';
import 'package:ui_app_1/app/components/grid_component.dart';
import 'package:ui_app_1/app/components/slider_component.dart';

import '../controllers/dashbaord_controller.dart';

class DashbaordView extends GetView<DashbaordController> {
  const DashbaordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const BackgroundComponent(),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Apps UI",
                    style: GoogleFonts.bebasNeue(fontSize: 30),
                  ),
                  const Icon(
                    Icons.logo_dev,
                    size: 30,
                  ),
                ],
              ),
            ),
            const CardUserComponent(),
            Text(
              "Silahkan Pilih Menu",
              style: GoogleFonts.abyssinicaSil(fontSize: 25),
            ),
            const GridComponent(),
            Text(
              "Berita Terbaru",
              style: GoogleFonts.abyssinicaSil(fontSize: 25),
            ),
            const SliderComponent(),
          ],
        ),
      ],
    ));
  }
}
