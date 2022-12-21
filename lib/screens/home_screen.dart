import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';
import 'package:flutter_componentes/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes en flutter"),
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, index) => ListTile(
                  title: Text(Approutes.menuOptions[index].name),
                  leading: Icon(
                    Approutes.menuOptions[index].icon,
                    color: Apptheme.primary,
                  ),
                  onTap: () {
                    // Approutes.menuOptions
                    Navigator.pushNamed(
                        context, Approutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: Approutes.menuOptions.length));
  }
}
