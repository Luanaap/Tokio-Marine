import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/theme/text_style.dart';

import '../theme/images.dart';

class Logo extends StatelessWidget {
  final bool BarApp;
  const Logo({Key? key, this.BarApp = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          fit: BoxFit.fill,
          Images.logo,
          height: 80,
          alignment: Alignment.topRight,
          color: Colors.white,
        ),
      ],
    );
  }
}
