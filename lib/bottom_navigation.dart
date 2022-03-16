import 'package:flutter/material.dart';
import 'pages/personal.dart';
import 'pages/address_book.dart';
import 'pages/discovery.dart';
import 'pages/chat.dart';

// 创建一个有状态的底部导航栏组件
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final list = [
    const Chat(),
    const AddressBook(),
    const Discovery(),
    const Personal()
  ];
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
            BottomNavigationBarItem(icon: Icon(Icons.textsms), label: '聊天'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: '通讯录'),
            BottomNavigationBarItem(icon: Icon(Icons.camera), label: '发现'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '我'),
          ]),
    );
  }
}
