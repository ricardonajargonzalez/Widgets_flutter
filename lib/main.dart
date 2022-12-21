import 'package:flutter/material.dart';
import 'package:flutter_componentes/router/app_routes.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: Approutes.initialRoute,
      routes: Approutes.getAppRoutes(),
      //onGenerateRoute: (settings) => Approutes.onGenerateRoute(settings), //esto es lo mismo
      onGenerateRoute:
          Approutes.onGenerateRoute, //aqui se envia el paramaetro settings
    );
  }
}
