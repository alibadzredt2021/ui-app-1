import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LoginFormComponent extends StatelessWidget {
  const LoginFormComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LottieBuilder.asset(
            'assets/lottie/animasi2.json',
            height: Get.height * 0.3,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: Get.height * 0.5,
                  width: Get.width * 0.8,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(191, 99, 101, 98),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Form(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Silahkan Masuk",
                          style: GoogleFonts.bebasNeue(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Masukan Email"),
                            isDense: true,
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.email),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            label: Text("Masukan Password"),
                            isDense: true,
                            border: OutlineInputBorder(),
                            icon: Icon(Icons.key),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Get.toNamed('/home');
                        },
                        icon: const Icon(Icons.login),
                        label: const Text("Masuk"),
                      ),
                      const Divider(
                        color: Color.fromARGB(255, 42, 40, 40),
                        height: 30,
                        thickness: 2,
                      ),
                      const Text("Lupa Password ?"),
                      const Text("Daftar Akun"),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text("Masuk Menggunakan Google"),
                      ),
                    ],
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
