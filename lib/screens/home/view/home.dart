import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/home/widgets/home_app_bar.dart';
import 'package:tokio_marine/screens/home/widgets/home_drawer.dart';
import 'package:tokio_marine/screens/home/widgets/user_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const route = '/home';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: HomeDrawer(
        size: size,
        name: 'Luana',
      ),
      appBar: HomeAppBar(size: size),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserCard(size: size, name: 'Luana'),
          ],
        ),
      ),
    );
  }
}
