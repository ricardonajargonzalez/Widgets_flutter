import 'package:flutter/material.dart';
import 'package:flutter_componentes/models/models.dart';

import '../screens/screens.dart';

class Approutes {
  static const initialRoute = '/home';
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: '/list_view1',
        name: 'List View1 Screen',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOption(
        route: '/list_view2',
        name: 'List View2 Screen',
        screen: const ListView2Screen(),
        icon: Icons.list_alt),
    MenuOption(
        route: '/alert',
        name: 'Alert Screen',
        screen: const AlertScreen(),
        icon: Icons.notification_important_outlined),
    MenuOption(
        route: '/card',
        name: 'Card Screen',
        screen: const CardScreen(),
        icon: Icons.card_membership_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*
   Tambien se pueden manejar las rutas de las siguiente manera
  */
  // static Map<String, Widget Function(BuildContext)> routes = {
  //   '/home': (BuildContext context) => const HomeScreen(),
  //   '/list_view1': (BuildContext context) => const ListView1Screen(),
  //   '/list_view2': (BuildContext context) => const ListView2Screen(),
  //   '/alert': (BuildContext context) => const AlertScreen(),
  //   '/card': (BuildContext context) => const CardScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const ListView2Screen());
  }
}
