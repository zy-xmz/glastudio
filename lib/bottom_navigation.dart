import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/painting.dart';

// 创建一个有状态的底部导航栏组件
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final list = [const HomePage(), const Mizhou()];
  int actIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: list[actIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: actIndex,
          onTap: (int index) {
            setState(() {
              actIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
            BottomNavigationBarItem(icon: Icon(Icons.icecream), label: '画')
          ]),
    );
  }
}
