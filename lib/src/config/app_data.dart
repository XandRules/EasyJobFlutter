import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/notificacao_model.dart';

List<ItemModel> garcom = [
  ItemModel(
    description:
        'Trabalho como garçom a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/garcom.png',
    itemName: 'Garçom',
    price: 40.0,
    unit: 'Hr',
    name: 'Roberto',
  ),
  ItemModel(
    description:
        'Trabalho como garçom a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/garcom.png',
    itemName: 'Garçom',
    price: 35.0,
    unit: 'Hr',
    name: 'Leonardo',
  ),
  ItemModel(
    description:
        'Trabalho como garçom a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/garcom.png',
    itemName: 'Garçom',
    price: 34.0,
    unit: 'Hr',
    name: 'Mateus',
  ),
  ItemModel(
    description:
        'Trabalho como garçom a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/garcom.png',
    itemName: 'Garçom',
    price: 32.0,
    unit: 'Hr',
    name: 'Renato',
  ),
  ItemModel(
    description:
        'Trabalho como garçom a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/garcom.png',
    itemName: 'Garçom',
    price: 33.0,
    unit: 'Hr',
    name: 'Roberto',
  ),
];

List<ItemModel> musico = [
  ItemModel(
      description:
          'Trabalho como Musico a mais de 10 anos em restaurantes e bares',
      imgUrl: 'assets/jobs/musico.png',
      itemName: 'Músico',
      price: 30.0,
      unit: 'Hr',
      name: 'Banda ABC'),
];

List<ItemModel> motoboy = [
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'João',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Daniel',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Pedro',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Carlos',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Joaquim',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Elias',
  ),
  ItemModel(
    description:
        'Trabalho como Motoboy a mais de 10 anos em restaurantes e bares',
    imgUrl: 'assets/jobs/motoboy.png',
    itemName: 'Motoboy',
    price: 30.0,
    unit: 'Hr',
    name: 'Tadeu',
  ),
];

List<ItemModel> cozinheiro = [
  ItemModel(
      description:
          'Trabalho como Cozinheiro a mais de 10 anos em restaurantes e bares',
      imgUrl: 'assets/jobs/cozinha.png',
      itemName: 'Cozinheiro(a)',
      price: 69.0,
      unit: 'Hr',
      name: 'Roberta')
];

List<String> categorias = [
  'Motoboy',
  'Cozinheiro(a)',
  'Garçom',
  'Músicos',
];

List<NotificacaoModel> notificacoes = [
  NotificacaoModel(
    item: garcom.first,
    quantity: 5,
  )
];
