import 'package:flutter/material.dart';

class AddressBook extends StatelessWidget {
  const AddressBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('通讯录')),
        body: const Center(child: Text('通讯录')));
  }
}
