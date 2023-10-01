import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_app_1/app/utils/color_utils.dart';

class CardUserComponent extends StatelessWidget {
  const CardUserComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width * 0.9,
            height: Get.height * 0.24,
            decoration: BoxDecoration(
              color: ColorUtil.silver,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Selamat Datang",
                        style: GoogleFonts.bebasNeue(fontSize: 25),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Get.toNamed("/login");
                        },
                        child: const Text(
                          "Log Out",
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  "alistest@gmail.com",
                  style: GoogleFonts.abyssinicaSil(fontSize: 25),
                ),
                const Divider(
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 33,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFjZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "Ali tiktok test mobiles ",
                          style: GoogleFonts.abyssinicaSil(fontSize: 25),
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
