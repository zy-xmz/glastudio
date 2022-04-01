import 'package:flutter/material.dart';
// 引入自定义的导航栏组件
import 'package:glastudio/components/custom_bar.dart';

class ChartDetail extends StatelessWidget {
  const ChartDetail({Key? key, this.arguments}) : super(key: key);

  final Map? arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(title: '聊天'),
      body: Text(arguments?['name'])
    );
  }
}
