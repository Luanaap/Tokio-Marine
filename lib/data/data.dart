import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/carousel.item.dart';
import '../models/home_card.dart';

class Data {
  List<CarouselIemModel> carouselItens = [
    CarouselIemModel(
      'Automóvel',
      FontAwesomeIcons.car,
    ),
    CarouselIemModel(
      'Residência',
      FontAwesomeIcons.house,
    ),
    CarouselIemModel(
      'Vida',
      FontAwesomeIcons.heartCircleCheck,
    ),
    CarouselIemModel(
      'Acidentes Pessoais',
      FontAwesomeIcons.peopleGroup,
    ),
  ];

  List<HomeCardModel> homeCards = [
    HomeCardModel(
      'Minha Familia',
      'Adicione aqui membros da sua família e  compartilhe os seguros com eles.',
      Icons.add_circle_outline_rounded,
    ),
    HomeCardModel(
      'Contrados',
      'Você ainda não possui seguros contratados',
      Icons.emoji_emotions,
    ),
  ];
}
