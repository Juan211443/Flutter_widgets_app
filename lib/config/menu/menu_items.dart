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
    tittle: 'Buttons',
    subTittle: 'Some buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    tittle: 'Cards',
    subTittle: 'Stylized',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    tittle: 'ProgressIndicator',
    subTittle: 'General and controlled aspects',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
];
