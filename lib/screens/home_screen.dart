import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes en flutter"),
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context, index) => ListTile(
                  title: Text(Approutes.menuOptions[index].name),
                  leading: Icon(Approutes.menuOptions[index].icon),
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
