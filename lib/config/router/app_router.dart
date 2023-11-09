import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/counter/counter_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/theme/theme_changer_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progressIndicator',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: SnackBarScreen.name,
      path: '/snackbars',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui_controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/tutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),  
    GoRoute(
      name: InfiniteScroll.name,
      path: '/infinite',
      builder: (context, state) => const InfiniteScroll(),
    ),
    GoRoute(
      name: CounterScreen.name,
      path: '/counter_screen',
      builder: (context, state) => const CounterScreen(),
    ),
    GoRoute(
      name: ThemeChangerScreen.name,
      path: '/theme_changer',
      builder: (context, state) => const ThemeChangerScreen(),
    ),               
  ],
);