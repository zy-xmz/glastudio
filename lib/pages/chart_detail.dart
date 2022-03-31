import 'package:flutter/material.dart';

class ChartDetail extends StatelessWidget {
  const ChartDetail({Key? key, this.arguments}) : super(key: key);

  final Map? arguments;

  @override
  Widget build(BuildContext context) {
    return Text(arguments?['name']);
  }
}
