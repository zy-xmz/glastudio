import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';
import 'package:glastudio/components/search_bar_btn.dart';

class ContactBook extends StatefulWidget {
  const ContactBook({Key? key}) : super(key: key);

  @override
  _ContactBookState createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  // 上半部分分类的单项
  Widget _singleCategory(
      Color color, IconData icon, String label, String link) {
    return Column(
      children: [
        ListTile(
            // 左边内容
            leading: Container(
              width: 40,
              height: 40,
              child: Icon(icon, color: Colors.white),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(4.0)),
            ),
            // 中间第一行标题
            title:
                Text(label, style: const TextStyle(color: Color(0xFF323232))),
            // 是否有选中效果
            selected: true,
            // 点击事件
            onTap: () => {}),
        _dividerLine()
      ],
    );
  }

  // 间隔线
  Widget _dividerLine() {
    return const Divider(
        height: 10, thickness: 1, indent: 70, color: Color(0xFFeeeeee));
  }

  // 通讯录列表
  Widget _singleContact() {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            ListTile(
                // 左边内容
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Image.asset('lib/assets/img/head.jpg',
                        width: 40, height: 40)),
                // 中间第一行标题
                title: const Text('啊白云',
                    style: TextStyle(color: Color(0xFF323232))),
                // 是否有选中效果
                selected: true,
                // 点击事件
                onTap: () => {}),
            _dividerLine()
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomBar(title: '通讯录', actions: [
          IconButton(
              onPressed: () => {},
              icon: const Icon(Icons.person_add_alt),
              color: const Color(0xFF323232))
        ]),
        body: ListView(children: [
          // 搜索框
          const SearchBarBtn(),
          Container(
            padding: const EdgeInsets.only(top: 8),
            margin: const EdgeInsets.only(bottom: 20),
            color: Colors.white,
            child: Column(children: [
              _singleCategory(
                  const Color(0xFFeea151), Icons.person_add_alt, '新的朋友', ''),
              _singleCategory(const Color(0xFF58be6b), Icons.group, '群聊', ''),
              _singleCategory(
                  const Color(0xFF3d83e5), Icons.bookmark, '标签', ''),
              _singleCategory(
                  const Color(0xFF3d83e5), Icons.person_rounded, '公众号', ''),
              _singleCategory(
                  const Color(0xFF457fd0), Icons.wechat, '企业微信联系人', ''),
            ]),
          ),
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                  _singleContact(),
                ],
              )),
        ]));
  }
}
