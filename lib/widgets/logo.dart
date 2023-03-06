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
      mainAxisAlignment: kIsWeb
          ? MainAxisAlignment.center
          : BarApp
              ? MainAxisAlignment.spaceEvenly
              : MainAxisAlignment.start,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          Images.logo,
          height: 40,
        ),
        Text('TOKIO MARINE \nSEGURADORA',
            textAlign: TextAlign.justify,
            style: AppTextStyle.appRoboto(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ))
      ],
    );
  }
}
