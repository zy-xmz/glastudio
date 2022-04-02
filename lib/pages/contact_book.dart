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
    {
      'img': 'lib/assets/img/head.jpg',
      'label': '云上联创',
      'hasMark': true,
      'mark': '我的企业'
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': '阿白',
      'hasMark': true,
      'mark': 'A'
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': 'A环球',
      'hasMark': false,
      'mark': ''
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': '哎',
      'hasMark': false,
      'mark': ''
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': 'baby',
      'hasMark': true,
      'mark': 'B'
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': '白皮',
      'hasMark': false,
      'mark': ''
    },
    {
      'img': 'lib/assets/img/head.jpg',
      'label': '白奇',
      'hasMark': false,
      'mark': ''
    },
  ];

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
              return Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                        // 左边内容
                        leading: Container(
                          width: 40,
                          height: 40,
                          child: Icon(categoryList[index]['icon'],
                              color: Colors.white),
                          decoration: BoxDecoration(
                              color: categoryList[index]['color'],
                              borderRadius: BorderRadius.circular(4.0)),
                        ),
                        // 中间第一行标题
                        title: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(categoryList[index]['label'],
                              style: const TextStyle(color: Color(0xFF323232))),
                        ),
                        // 是否有选中效果
                        selected: true,
                        // 点击事件
                        onTap: () => {}),
                    // 最后一行不要生成间隔线
                    index < categoryList.length - 1
                        ? const Divider(
                            indent: 70,
                            thickness: 1,
                            height: 10,
                            color: Color(0xFFeeeeee))
                        : Container()
                  ],
                ),
              );
            }, childCount: categoryList.length)),
            SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
              // nextLiIndex 是下一项的索引；如果当前是最后一项，那么下一项就定为
              var nextLiIndex = index < contactList.length - 1
                  ? index + 1
                  : contactList.length - 1;
              return Column(children: [
                // Offstage（中文意思：幕后） 控制组件显示或隐藏
                Offstage(
                    offstage: contactList[index]['hasMark'] ==
                        false, // offstage为true，则不显示组件
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        alignment: Alignment.centerLeft,
                        child: Text(contactList[index]['mark']))),
                Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        ListTile(
                            // 左边内容
                            leading: ClipRRect(
                                borderRadius: BorderRadius.circular(4.0),
                                child: Image.asset(contactList[index]['img'],
                                    width: 40, height: 40)),
                            // 中间第一行标题
                            title: Container(
                              alignment: Alignment.centerLeft,
                              child: Text(contactList[index]['label'],
                                  style: const TextStyle(
                                      color: Color(0xFF323232))),
                            ),
                            // 是否有选中效果
                            selected: true,
                            // 点击事件
                            onTap: () => {}),
                        contactList[nextLiIndex]['hasMark'] == false &&
                                index < contactList.length - 1
                            ? const Divider(
                                indent: 70,
                                thickness: 1,
                                height: 10,
                                color: Color(0xFFeeeeee))
                            : Container()
                      ],
                    ))
              ]);
            }, childCount: contactList.length))
          ],
        ));
  }
}
