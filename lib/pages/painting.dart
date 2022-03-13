import 'package:flutter/material.dart';

class Mizhou extends StatelessWidget {
  const Mizhou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('画')),
        body: const Center(child: Text('painting')));
  }
}
