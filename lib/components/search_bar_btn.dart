import 'package:flutter/material.dart';

class SearchBarBtn extends StatelessWidget {
  const SearchBarBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.search, color: Color(0xFFcccccc), size: 22),
            Text('搜索', style: TextStyle(color: Color(0xFFcccccc), fontSize: 18))
          ]),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(6))
      ));
  }
}

