import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class SideMenu extends StatefulWidget {

  final GlobalKey<ScaffoldState> scaffoldKey;

  const SideMenu({
    super.key, 
    required this.scaffoldKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDraweIndex = 1;

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
      selectedIndex: navDraweIndex,
      onDestinationSelected: (value) {

        setState(() {
          navDraweIndex = value;
        });
        final menuItem = appMenuItems[value];
        context.pushNamed(menuItem.goRouter);
        widget.scaffoldKey.currentState?.closeDrawer();
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Main'),
        ),

        ...appMenuItems.sublist(0, 3).map(
              (e) => NavigationDrawerDestination(
                  icon: Icon(e.icon), label: Text(e.title)),
            ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('More options'),
        ),

        ...appMenuItems.sublist(3).map(
              (e) => NavigationDrawerDestination(
                  icon: Icon(e.icon), label: Text(e.title)),
            ),

        // const NavigationDrawerDestination(
        //   icon: Icon(Icons.add),
        //   label: Text('Home screeen')
        // ),
        // const NavigationDrawerDestination(
        //   icon: Icon(Icons.add_shopping_cart),
        //   label: Text('Otra pantalla')
        // )
      ],
    );
  }
}
