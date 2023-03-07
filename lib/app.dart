import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:tokio_marine/providers/auth.dart';
import 'package:tokio_marine/screens/home/view/home.dart';
import 'package:tokio_marine/screens/web_view_app.dart';
import 'package:tokio_marine/theme/colors.dart';

import 'screens/login/view/login.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Auth(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: ColorsMarine.green,
            scaffoldBackgroundColor: ColorsMarine.black,
            appBarTheme: const AppBarTheme(
              color: ColorsMarine.shadow,
              centerTitle: true,
            ),
          ),
          initialRoute: LoginInitial.route,
          routes: {
            LoginInitial.route: (context) => const LoginInitial(),
            HomeScreen.route: (context) => const HomeScreen(),
            WebViewApp.route: (context) => const WebViewApp(),
          }),
    );
  }
}
