/*
 * @description 定义公共顶部栏
 */
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomBar({
    Key? key,
    this.title = '',
    this.actions,
    this.shadowColor = const Color(0x00ffffff),
    this.backgroundColor = const Color(0xFFfafafa)
  }) : super(key: key);

  final String title;
  final List<Widget>? actions;
  final Color shadowColor;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: const TextStyle(color: Color(0xFF323232))),
      actions: actions,
      shadowColor: shadowColor,
      backgroundColor: backgroundColor
    );
  }

  @override
  Size get preferredSize => const Size(100, 50);
}
