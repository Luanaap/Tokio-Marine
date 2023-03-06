import 'package:flutter/material.dart';
import 'package:tokio_marine/theme/colors.dart';

class CircleButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool border;
  final Widget child;

  const CircleButton({
    Key? key,
    required this.onTap,
    this.border = true,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 90,
        height: 90,
        decoration: BoxDecoration(
          color: Colors.green,
          border: border
              ? Border.all(
                  color: ColorsMarine.lightBlack,
                  width: 10,
                )
              : null,
          shape: BoxShape.circle,
        ),
        child: child,
      ),
    );
  }
}
