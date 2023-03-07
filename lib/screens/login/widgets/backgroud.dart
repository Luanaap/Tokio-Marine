import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/login/widgets/bottom_login.dart';
import 'package:tokio_marine/theme/text_style.dart';
import 'package:tokio_marine/widgets/logo.dart';

import '../../../theme/colors.dart';

class BackgroundContainer extends StatelessWidget {
  final Size size;
  const BackgroundContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: ColorsMarine.greenGradient),
      width: size.width,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.060,
              horizontal: size.width * 0.060,
            ),
            child: Column(
              crossAxisAlignment:
                  kIsWeb ? CrossAxisAlignment.center : CrossAxisAlignment.start,
              children: [
                const Logo(),
                const SizedBox(
                  height: 2,
                  width: 10,
                ),
                SizedBox(
                  width: size.width,
                  child: Text(
                    'Bem-vindo!',
                    textAlign: kIsWeb ? TextAlign.center : TextAlign.start,
                    style: AppTextStyle.appRoboto(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Aqui você gerência seus seguros e de seus familiares em poucos cliques',
                  style: AppTextStyle.appRoboto(),
                ),
              ],
            ),
          ),
          BottomLogin(
            size: size,
          )
        ],
      ),
    );
  }
}
