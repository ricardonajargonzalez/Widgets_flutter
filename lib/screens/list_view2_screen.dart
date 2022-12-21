import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

  final options = const ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("ListView 2")),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text(
                    options[index],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.indigo),
                  onTap: () {},
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: options.length));
  }
}
