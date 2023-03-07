import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../theme/images.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({Key? key, required Size size})
      : super(
            key: key,
            leading: Builder(
              builder: (ctx) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.white,
                  ),
                  onPressed: () => Scaffold.of(ctx).openDrawer(),
                );
              },
            ),
            title: Image.asset(
              Images.logo,
              height: size.height * 0.30,
              color: Colors.white,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: kIsWeb ? 10 : 0,
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.white,
                      size: 30,
                    )),
              )
            ]);
}
