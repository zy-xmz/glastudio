import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';
import 'package:glastudio/components/search_bar_btn.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(
        title: '聊天',
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.add_circle_outline,
                color: Color(0xFF323232)))
        ]),
        body: Column(children: [
          const SearchBarBtn(),
          Container(
            color: Colors.white,
            child: Column(children: [
              ListTile(
                  // 左边内容
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('lib/assets/img/head.jpg',
                        width: 50, height: 50)),
                // 右边内容
                trailing: const Text('回复时间',
                    style: TextStyle(color: Color(0xFFcccccc))),
                // 中间第一行标题
                title: const Text('标题',
                    style: TextStyle(color: Color(0xFF323232))),
                // 中间第二行标题
                subtitle: const Text('副标题',
                    style: TextStyle(color: Color(0xFF7f7f7f))),
                // 是否有选中效果
                selected: true,
                // 点击事件
                onTap: () => {}),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 70,
                  color: Color(0xFFeeeeee)),
              ListTile(
                  // 左边内容
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('lib/assets/img/head.jpg',
                        width: 50, height: 50)),
                // 右边内容
                trailing: const Text('回复时间',
                    style: TextStyle(color: Color(0xFFcccccc))),
                // 中间第一行标题
                title: const Text('标题',
                    style: TextStyle(color: Color(0xFF323232))),
                // 中间第二行标题
                subtitle: const Text('副标题',
                    style: TextStyle(color: Color(0xFF7f7f7f))),
                // 是否有选中效果
                selected: true,
                // 点击事件
                onTap: () => {}),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 70,
                  color: Color(0xFFeeeeee)),
            ])
          )
        ]),// 搜索框
        );
  }
}
