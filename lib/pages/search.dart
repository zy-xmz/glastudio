import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              height: 70,
              padding: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: const TextField(
                  decoration: InputDecoration(
                hintText: '搜索', // 提示文本
                border: InputBorder.none, // 去掉边框
                filled: true, // 是否填充
                fillColor: Colors.red, // 输入框填充白色
              )),
            )),
            TextButton(
                onPressed: () {
                  // 关闭当前页
                  Navigator.pop(context);
                },
                child: const Text('取消')),
          ],
        )
      ]), // 搜索框
    );
  }
}
