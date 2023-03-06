import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/login/widgets/login_form.dart';
import 'package:tokio_marine/theme/colors.dart';
import 'package:tokio_marine/widgets/circle_button.dart';

import '../../../providers/auth.dart';
import '../../../widgets/text_button.dart';

class LoginBox extends StatefulWidget {
  final VoidCallback onTap;
  final Size size;
  final Auth userProvider;
  final Key formKey;
  final TextEditingController cpfController;
  final TextEditingController passwordController;

  const LoginBox({
    Key? key,
    required this.size,
    required this.onTap,
    required this.userProvider,
    required this.formKey,
    required this.cpfController,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
  int _isSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 1.35),
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 30,
          ),
          decoration: BoxDecoration(
            color: ColorsMarine.lightBlack,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: ColorsMarine.shadow,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 15),
              )
            ],
          ),
          width: kIsWeb ? widget.size.width * 0.2 : widget.size.width * 0.9,
          height:
              kIsWeb ? widget.size.height * 0.33 : widget.size.height * 0.45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 50,
                      ),
                      child: TextButtonLogin(
                        isSelected: _isSelected == 0,
                        onTap: () {
                          setState(() {
                            _isSelected == 0;
                          });
                        },
                        text: 'Entrar',
                      ),
                    ),
                    TextButtonLogin(
                      isSelected: _isSelected == 1,
                      onTap: () {
                        setState(() {
                          _isSelected = 1;
                        });
                      },
                      text: 'Cadastrar',
                    ),
                  ],
                ),
              ),
              _isSelected == 0
                  ? FormLogin(
                      formKey: widget.formKey,
                      cpfController: widget.cpfController,
                      passwordController: widget.passwordController,
                    )
                  : Container()
            ],
          ),
        ),
        CircleButton(
          onTap: widget.onTap,
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: ColorsMarine.greenGradient,
            ),
            child: const Icon(
              Icons.chevron_right_sharp,
              color: Colors.white,
              size: 50,
            ),
          ),
        )
      ],
    );
  }
}
