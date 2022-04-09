import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  // 定义主要菜单列表
  List mainMenuList = [
    {
      'icon': Icons.category,
      'iconColor': const Color(0xFFe45f5c),
      'text': '收藏',
      'link': ''
    },
    {
      'icon': Icons.image,
      'iconColor': const Color(0xFF3d83e6),
      'text': '朋友圈',
      'link': ''
    },
    {
      'icon': Icons.style,
      'iconColor': const Color(0xFF6467e7),
      'text': '卡包',
      'link': ''
    },
    {
      'icon': Icons.mood,
      'iconColor': const Color(0xFFf4c450),
      'text': '表情',
      'link': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // 头部信息
      Container(
        padding:
            const EdgeInsets.only(left: 25, right: 10, top: 30, bottom: 30),
        color: Colors.white,
        child: Row(children: [
          // 左边头像
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: ClipRRect(
              child: Image.asset(
                'lib/assets/img/head.jpg',
                width: 64,
                height: 64,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // 中间文字
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                    margin: const EdgeInsets.only(top: 18, bottom: 3),
                    child: const Text('某月某日',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold))),
                Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Text('微信号：HelloBaby',
                        style:
                            TextStyle(color: Color(0xFF646464), fontSize: 16))),
                Row(children: [
                  Container(
                      height: 24,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFeeeeee)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: const [
                          Icon(Icons.add, color: Color(0xFF999999), size: 14),
                          Text(
                            '状态',
                            style: TextStyle(
                                color: Color(0xFF646464), fontSize: 12),
                          )
                        ],
                      )),
                  Container(
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFeeeeee)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              'lib/assets/img/head.jpg',
                              width: 14,
                              height: 14,
                            ),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: const Text(
                                '2个朋友',
                                style: TextStyle(
                                    color: Color(0xFF646464), fontSize: 12),
                              ))
                        ],
                      ))
                ])
              ])),
          // 右边图标
          const Icon(Icons.qr_code, size: 20, color: Color(0xFF999999)),
          const Icon(Icons.chevron_right, size: 30, color: Color(0xFF999999))
        ]),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.white,
        child: const ListTile(
          leading: Icon(Icons.wechat, color: Color(0xFF59c47e), size: 26),
          title: Text('服务'),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
      Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 223,
          color: Colors.white,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(mainMenuList[index]['icon'],
                      color: mainMenuList[index]['iconColor'], size: 26),
                  title: Text(mainMenuList[index]['text']),
                  trailing: const Icon(Icons.chevron_right),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 8,
                  thickness: 1,
                  indent: 70,
                  color: Color(0xFFeeeeee),
                );
              },
              itemCount: mainMenuList.length)),
      Container(
        color: Colors.white,
        child: const ListTile(
          leading: Icon(Icons.settings, color: Color(0xFF3d83e6), size: 26),
          title: Text('设置'),
          trailing: Icon(Icons.chevron_right),
        ),
      )
    ]));
  }
}
