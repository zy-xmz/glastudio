import 'package:flutter/material.dart';

class SearchBarBtn extends StatelessWidget {
  const SearchBarBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        style: ButtonStyle(
            fixedSize:
                MaterialStateProperty.all(const Size.fromHeight(40)), // 设置按钮高度
            elevation: MaterialStateProperty.all(0), // 去掉阴影效果（阴影程度为0）
            backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () => {},
        child:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Icon(Icons.search, color: Color(0xFFcccccc), size: 22),
          Text('搜索', style: TextStyle(color: Color(0xFFcccccc), fontSize: 18))
        ]),
      ),
    );
  }
}
