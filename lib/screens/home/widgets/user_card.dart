import 'package:flutter/material.dart';
import 'package:tokio_marine/theme/colors.dart';

import '../../../theme/text_style.dart';

class UserCard extends StatelessWidget {
  final Size size;
  final String name;
  final String? imageUrl;

  const UserCard({
    Key? key,
    required this.size,
    required this.name,
    this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height * 0.1,
      decoration: const BoxDecoration(
        gradient: ColorsMarine.greenGradient,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                '',
                style: AppTextStyle.appRoboto(),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              width: size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bem-vindo',
                    textAlign: TextAlign.start,
                    style: AppTextStyle.appRoboto(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    name,
                    textAlign: TextAlign.start,
                    style: AppTextStyle.appRoboto(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
