import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';
import 'package:glastudio/components/search_bar_btn.dart';

class ContactBook extends StatefulWidget {
  const ContactBook({Key? key}) : super(key: key);

  @override
  _ContactBookState createState() => _ContactBookState();
}

class _ContactBookState extends State<ContactBook> {
  // 上半部分列表
  static List categoryList = [
    {
      'icon': Icons.person_add_alt,
      'label': '新的朋友',
      'color': const Color(0xFFeea151)
    },
    {'icon': Icons.group, 'label': '群聊', 'color': const Color(0xFF58be6b)},
    {'icon': Icons.bookmark, 'label': '标签', 'color': const Color(0xFF3d83e5)},
    {
      'icon': Icons.person_rounded,
      'label': '公众号',
      'color': const Color(0xFF3d83e5)
    },
    {
      'icon': Icons.wechat,
      'label': '企业微信联系人',
      'color': const Color(0xFF457fd0)
    },
  ];

  // 下半部分通讯录列表
  static List contactList = [
    {'img': 'lib/assets/img/head.jpg', 'label': '啊白云'},
    {'img': 'lib/assets/img/head.jpg', 'label': '啊白云'},
    {'img': 'lib/assets/img/head.jpg', 'label': '啊白云'},
  ];

  // 间隔线
  Widget _dividerLine() {
    return const Divider(
        height: 10, thickness: 1, indent: 70, color: Color(0xFFeeeeee));
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
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SearchBarBtn()),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return ListTile(
                  // 左边内容
                  leading: Container(
                    width: 40,
                    height: 40,
                    child:
                        Icon(categoryList[index]['icon'], color: Colors.white),
                    decoration: BoxDecoration(
                        color: categoryList[index]['color'],
                        borderRadius: BorderRadius.circular(4.0)),
                  ),
                  // 中间第一行标题
                  title: Text(categoryList[index]['label'],
                      style: const TextStyle(color: Color(0xFF323232))),
                  // 是否有选中效果
                  selected: true,
                  // 点击事件
                  onTap: () => {});
            }, childCount: categoryList.length)),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    children: [
                      ListTile(
                          // 左边内容
                          leading: ClipRRect(
                              borderRadius: BorderRadius.circular(4.0),
                              child: Image.asset(contactList[index]['img'],
                                  width: 40, height: 40)),
                          // 中间第一行标题
                          title: Text(contactList[index]['label'],
                              style: const TextStyle(color: Color(0xFF323232))),
                          // 是否有选中效果
                          selected: true,
                          // 点击事件
                          onTap: () => {}),
                      _dividerLine()
                    ],
                  ));
            }, childCount: contactList.length))
          ],
        ));
  }
}
