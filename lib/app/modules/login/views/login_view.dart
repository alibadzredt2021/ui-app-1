import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ui_app_1/app/components/background_component.dart';
import 'package:ui_app_1/app/components/login_form_component.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: const [
            BackgroundComponent(),
            LoginFormComponent(),
          ],
        ));
  }
}
