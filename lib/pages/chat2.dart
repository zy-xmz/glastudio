import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(
          children: [
            Expanded(
                child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              padding: const EdgeInsets.all(10),
              child: const TextField(
                  decoration: InputDecoration(
                hintText: '搜索', // 提示文本
                border: InputBorder.none, // 去掉边框
                filled: true, // 是否填充
                fillColor: Colors.white, // 输入框填充白色
              )),
            )),
            TextButton(onPressed: () {}, child: const Text('取消')),
          ],
        )
      ]), // 搜索框
    );
  }
}

// 搜索框
class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  static const List<String> _searchOptions = <String>[
    '第一条参考',
    '第二条参考',
    '第三条参考',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
        // 构建选择项
        optionsBuilder: (TextEditingValue value) {
      if (value.text == '') {
        // 返回一个空iterable，迭代立刻停止
        return const Iterable.empty();
      }
      // 返回过滤后的数据
      return _searchOptions.where((String option) {
        // 留下包含关键字的数据
        return option.contains(value.text);
      });
    });
  }
}
