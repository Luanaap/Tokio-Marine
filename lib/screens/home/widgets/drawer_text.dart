import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tokio_marine/theme/text_style.dart';

import '../../../theme/colors.dart';

class DrawerTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Size size;
  final bool isLogout;

  const DrawerTextButton({
    Key? key,
    required this.onTap,
    required this.size,
    this.isLogout = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: double.infinity,
        height: size.height * 0.5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            isLogout
                ? Container()
                : const Padding(
                    padding: EdgeInsets.only(left: 20, right: 40),
                    child: Icon(
                      Icons.satellite,
                      color: ColorsMarine.green,
                      size: 30,
                    ),
                  ),
            isLogout
                ? Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      text,
                      style: AppTextStyle.appRoboto(
                        color: ColorsMarine.limeGreen,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                : Text(
                    text,
                    style: AppTextStyle.appRoboto(),
                  )
          ],
        ),
      ),
    );
  }
}
