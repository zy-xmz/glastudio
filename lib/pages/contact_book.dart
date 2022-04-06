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

  Widget textBtns() {
    // 字母列表
    var letters = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z'
    ];
    // 定义一个组件集合，接收每个letter生成的组件
    List<Widget> widBtns = [];
    // 最终要渲染的组件
    Widget btnListColumn;
    for (var i = 0; i < letters.length; i++) {
      widBtns.add(TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(23))), // 设置按钮圆角
            overlayColor: MaterialStateProperty.all(Colors.blue), // 设置选中时的背景色
            foregroundColor: MaterialStateProperty.resolveWith((states) {
              if (states.contains(MaterialState.hovered) ||
                  states.contains(MaterialState.pressed) ||
                  states.contains(MaterialState.focused) ||
                  states.contains(MaterialState.selected)) {
                return Colors.white;
              } // 设置hovered、pressed、focused、selected四种情况下的文本颜色
              return const Color(0xFF646464); // 设置默认文本颜色
            }),
            minimumSize:
                MaterialStateProperty.all(const Size(23, 23)), // 设置按钮尺寸
            padding: MaterialStateProperty.all(EdgeInsets.zero), // 设置边框到文字的距离
          ),
          onPressed: () {
            // Scrollable.ensureVisible(keyA.currentContext as BuildContext);
          },
          child: Text(
            letters[i],
            style: const TextStyle(fontSize: 10), // 设置按钮文字大小
          )));
    }

    btnListColumn = Column(
      children: widBtns,
    );
    return btnListColumn;
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
        body: ConstrainedBox(
            constraints: const BoxConstraints.expand(), // 使其子组件Stack占满屏幕
            child: Stack(children: [
              CustomScrollView(
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
                                    style: const TextStyle(
                                        color: Color(0xFF323232))),
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
                                      child: Image.asset(
                                          contactList[index]['img'],
                                          width: 40,
                                          height: 40)),
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
                  }, childCount: contactList.length)),
                ],
              ),
              Positioned(
                top: 50,
                right: 5,
                height: 450,
                child: SingleChildScrollView(child: textBtns()),
              )
            ])));
  }
}
