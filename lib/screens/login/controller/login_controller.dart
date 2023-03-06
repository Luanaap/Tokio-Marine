import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/auth.dart';
import '../../home/view/home.dart';

class LoginController {
  final BuildContext context;
  late final Auth userProvider;

  LoginController(this.context) {
    userProvider = Provider.of<Auth>(context, listen: false);
  }

  final cpfController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void login() {
    if (!formKey.currentState!.validate()) {
      return;
    }

    Navigator.of(context).pushReplacementNamed(HomeScreen.route);
  }
}
