import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tokio_marine/theme/colors.dart';
import 'package:tokio_marine/theme/text_style.dart';

class BottomLogin extends StatelessWidget {
  final Size size;
  const BottomLogin({Key? key, required this.size}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorsMarine.black,
      height: size.height * 0.5,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 190),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    height: 60,
                    width: 30,
                    child: Image.asset(
                      'assets/images/tokio-resolve.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    style: const TextStyle(),
                    children: [
                      const TextSpan(
                        text: 'tokio',
                        style: TextStyle(color: Colors.white),
                      ),
                      TextSpan(
                        text: '\nresolve',
                        style: TextStyle(color: Colors.amber.shade400),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 4),
          const Text(
            'Acesse através das redes sociais',
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.only(
              bottom: size.height * 0.07,
            ),
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Icon(FontAwesomeIcons.twitter,
                        color: Colors.white, size: 20),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
