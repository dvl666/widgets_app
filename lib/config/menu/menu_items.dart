import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/theme/theme_changer_screen.dart';

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
    title: 'Riverpod Counter', 
    subtitle: 'Introduccion a riverpod', 
    link: '/counter_screen', 
    icon: Icons.podcasts_outlined,
    goRouter: CounterScreen.name
  ),  
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
  ),
  
      MenuItem(
    title: 'ProgressIndicators', 
    subtitle: 'Generales y controlados', 
    link: '/progressIndicators', 
    icon: Icons.refresh_rounded,
    goRouter: ProgressScreen.name
  ),
      MenuItem(
    title: 'Snackbar y Diagolos', 
    subtitle: 'Indicadores de pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline,
    goRouter: SnackBarScreen.name
  ),  
      MenuItem(
    title: 'Animated container', 
    subtitle: 'Stateful widget animado', 
    link: '/animated', 
    icon: Icons.check_box_outline_blank_rounded,
    goRouter: AnimatedScreen.name
  ),
      MenuItem(
    title: 'Ui Controls + tiles', 
    subtitle: 'Una serie de controles de Flutter', 
    link: '/ui_Controls', 
    icon: Icons.cast_connected_outlined,
    goRouter: UiControlsScreen.name
  ),
      MenuItem(
    title: 'Tutorial', 
    subtitle: 'Pasos para ocupar la aplicacion', 
    link: '/tutorial', 
    icon: Icons.fullscreen_exit_rounded,
    goRouter: AppTutorialScreen.name
  ),  
      MenuItem(
    title: 'InfiniteScroll y Pull', 
    subtitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded,
    goRouter: InfiniteScroll.name
  ),
      MenuItem(
    title: 'Theme changer', 
    subtitle: 'Lista de temas de la aplicacion', 
    link: '/theme_changer', 
    icon: Icons.temple_buddhist,
    goRouter: ThemeChangerScreen.name
  ),
];
