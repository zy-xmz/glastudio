import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  const Personal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        padding:
            const EdgeInsets.only(left: 25, right: 10, top: 30, bottom: 30),
        color: Colors.white,
        child: Row(children: [
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
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 5),
                    child: const Text('某月某日',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold))),
                Container(
                    margin: const EdgeInsets.only(bottom: 7),
                    child: const Text('微信号：HelloBaby',
                        style:
                            TextStyle(color: Color(0xFF646464), fontSize: 16))),
                Row(children: [
                  Container(
                      height: 26,
                      margin: const EdgeInsets.only(right: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xFFeeeeee)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        children: const [
                          Icon(Icons.add, color: Color(0xFF999999)),
                          Text('状态')
                        ],
                      )),
                  Container(
                      height: 26,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
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
                          const Text('2个朋友')
                        ],
                      ))
                ])
              ])),
          const Icon(Icons.qr_code, size: 20, color: Color(0xFF999999)),
          const Icon(Icons.chevron_right, size: 30, color: Color(0xFF999999))
        ]),
      ),
      Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.white,
        child: const ListTile(
          leading: Icon(Icons.wechat, size: 26),
          title: Text('服务'),
          trailing: Icon(Icons.chevron_right),
        ),
      ),
      Container(
          margin: const EdgeInsets.only(top: 10),
          color: Colors.white,
          child: Column(children: const [
            ListTile(
              leading: Icon(Icons.category, size: 26),
              title: Text('收藏'),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              height: 10,
              thickness: 1,
              indent: 70,
              color: Color(0xFFeeeeee),
            ),
            ListTile(
              leading: Icon(Icons.image, size: 26),
              title: Text('朋友圈'),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              height: 10,
              thickness: 1,
              indent: 70,
              color: Color(0xFFeeeeee),
            ),
            ListTile(
              leading: Icon(Icons.style, size: 26),
              title: Text('卡包'),
              trailing: Icon(Icons.chevron_right),
            ),
            Divider(
              height: 10,
              thickness: 1,
              indent: 70,
              color: Color(0xFFeeeeee),
            ),
            ListTile(
              leading: Icon(Icons.mood, size: 26),
              title: Text('表情'),
              trailing: Icon(Icons.chevron_right),
            ),
          ])),
      Container(
        margin: const EdgeInsets.only(top: 10),
        color: Colors.white,
        child: const ListTile(
          leading: Icon(Icons.settings, size: 26),
          title: Text('设置'),
          trailing: Icon(Icons.chevron_right),
        ),
      )
    ]));
  }
}
