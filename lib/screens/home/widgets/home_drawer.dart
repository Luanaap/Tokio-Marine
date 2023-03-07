import 'package:flutter/material.dart';
import 'package:tokio_marine/screens/home/widgets/drawer_text.dart';
import 'package:tokio_marine/theme/text_style.dart';

import '../../../theme/colors.dart';
import '../../login/view/login.dart';

class HomeDrawer extends StatelessWidget {
  final Size size;
  final String name;

  const HomeDrawer({
    Key? key,
    required this.size,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: ColorsMarine.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 5,
                    ),
                    child: Text(
                      'Olá!',
                      style: AppTextStyle.appRoboto(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Text(
                          '',
                          style: AppTextStyle.appRoboto(),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name.toUpperCase(),
                              textAlign: TextAlign.start,
                              style: AppTextStyle.appRoboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Text(
                                'Minha Conta',
                                textAlign: TextAlign.start,
                                style: AppTextStyle.appRoboto(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: ColorsMarine.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 100, right: 50),
              child: SizedBox(
                child: Column(
                  children: [
                    DrawerTextButton(
                      size: size,
                      text: 'Home/Seguros',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Minhas Contratações',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Minha Familia',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Meus Sinistros',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Meus Bens',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Pagamentos',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Corretores',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Valores Boleto',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Telefones Importantes',
                      onTap: () {},
                    ),
                    SizedBox(height: 5),
                    DrawerTextButton(
                      size: size,
                      text: 'Configurações',
                      onTap: () {},
                    ),
                    SizedBox(height: 10),
                    DrawerTextButton(
                      size: size,
                      isLogout: true,
                      text: 'Sair',
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, LoginInitial.route);
                      },
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: ColorsMarine.greenGradient,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Duvidas ?',
                          style: AppTextStyle.appRoboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Entre em contato conosco por meio das redes sociais',
                          style: AppTextStyle.appRoboto(fontSize: 15),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
