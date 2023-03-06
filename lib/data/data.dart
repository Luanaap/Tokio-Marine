import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/carousel.item.dart';
import '../models/home_card.dart';

class Data {
  List<CarouselIemModel> carouselItens = [
    CarouselIemModel(
      'Auto',
      FontAwesomeIcons.car,
    ),
    CarouselIemModel(
      'Casa',
      FontAwesomeIcons.house,
    ),
    CarouselIemModel(
      'Vida',
      FontAwesomeIcons.heartCircleCheck,
    ),
    CarouselIemModel(
      'Familiar',
      FontAwesomeIcons.peopleGroup,
    ),
    CarouselIemModel(
      'Celular',
      Icons.mobile_friendly,
    ),
  ];

  List<HomeCardModel> homeCards = [
    HomeCardModel(
      'Minha Familia',
      'Não tem nada ainda aqui sobre sua familia',
      Icons.family_restroom,
    ),
    HomeCardModel(
      'Contrados',
      'Não tem nenhum contratado ainda',
      Icons.emoji_emotions,
    ),
    HomeCardModel(
      'Carro',
      'Não informações aqui ainda sobre seu carro',
      FontAwesomeIcons.car,
    )
  ];
}
