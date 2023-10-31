import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';

class MenuItem{

  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  final String goRouter;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon,
    required this.goRouter
  });
}

const appMenuItems = <MenuItem>[

  MenuItem(
    title: 'Botones', 
    subtitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined,
    goRouter: ButtonsScreen.name
  ),

    MenuItem(
    title: 'Tarjetas', 
    subtitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card,
    goRouter: CardsScreen.name
  )

];
