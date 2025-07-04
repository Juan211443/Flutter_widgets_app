import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: 'Buttons',
    subTitle: 'Some buttons',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Cards',
    subTitle: 'Stylized',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'ProgressIndicator',
    subTitle: 'General and controlled aspects',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'Snackbars',
    subTitle: 'Snackbar and dialogs',
    link: '/snackbars',
    icon: Icons.info_outline,
  ),
  MenuItems(
    title: 'Animated container',
    subTitle: 'Stateful widget animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItems(
    title: 'UI controls + tiles',
    subTitle: 'Flutter control series',
    link: '/ui_controls',
    icon: Icons.car_rental_outlined,
  ),
  MenuItems(
    title: 'Introduction',
    subTitle: 'Quick introduction',
    link: '/app_tutorial',
    icon: Icons.accessible_rounded,
  ),
];
