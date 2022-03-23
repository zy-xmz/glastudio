import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('聊天', style: TextStyle(color: Color(0xFF323232))),
          actions: [
            IconButton(
                onPressed: () => {},
                icon: const Icon(Icons.add_circle_outline,
                    color: Color(0xFF323232)))
          ],
          backgroundColor: Colors.white,
        ),
        body: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
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
                  onTap: () => {});
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                    height: 10,
                    thickness: 1,
                    indent: 70,
                    color: Color(0xFFeeeeee)),
            itemCount: 20));
  }
}
