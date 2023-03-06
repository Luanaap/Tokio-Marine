import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../controller/login_controller.dart';
import '../widgets/backgroud.dart';
import '../widgets/login_box.dart';

class LoginInitial extends StatelessWidget {
  const LoginInitial({Key? key}) : super(key: key);
  static const route = '/login';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = LoginController(context);

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    BackgroundContainer(size: size),
                    LoginBox(
                      size: size,
                      cpfController: controller.cpfController,
                      passwordController: controller.passwordController,
                      userProvider: controller.userProvider,
                      formKey: controller.formKey,
                      onTap: () => controller.login(),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
