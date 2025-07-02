import 'package:flutter/material.dart';

class MenuItems {
  final String tittle;
  final String subTittle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.tittle,
    required this.subTittle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    tittle: 'Botones',
    subTittle: 'Varios',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    tittle: 'Tarjetas',
    subTittle: 'Estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
];
