import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView 1"),
        ),
        body: ListView(
          children: [
            ...options
                .map((descripcion) => ListTile(
                      // leading: const Icon(Icons.list_alt_outlined),
                      title: Text(descripcion),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
