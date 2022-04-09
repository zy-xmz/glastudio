import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';

class Discovery extends StatelessWidget {
  const Discovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomBar(title: '发现'),
      body: ListView(children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.camera, color: Color(0xFF59c47e)),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('朋友圈'))
              ]),
              Row(children: [
                ClipRRect(
                  child: Image.asset(
                    'lib/assets/img/head.jpg',
                    width: 30,
                    height: 30,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                const Icon(Icons.chevron_right, color: Color(0xFFb3b3b3))
              ])
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    const Icon(Icons.play_circle_outline,
                        color: Color(0xFFeca150)),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text('视频号'))
                  ]),
                  Row(children: [
                    ClipRRect(
                      child: Image.asset(
                        'lib/assets/img/head.jpg',
                        width: 30,
                        height: 30,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Text('赞过',
                            style: TextStyle(
                                color: Color(0xFF646464), fontSize: 12))),
                    const Icon(Icons.chevron_right, color: Color(0xFFb3b3b3))
                  ])
                ],
              ),
              const Divider(
                height: 20,
                indent: 33,
                thickness: 1,
                color: Color(0xFFeeeeee),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    const Icon(Icons.whatshot, color: Color(0xFFec6b50)),
                    Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: const Text('直播'))
                  ]),
                  Row(children: const [
                    Icon(Icons.chevron_right, color: Color(0xFFb3b3b3))
                  ])
                ],
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.qr_code_scanner, color: Color(0xFF3d83e6)),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('扫一扫'))
              ]),
              Row(children: const [
                Icon(Icons.chevron_right, color: Color(0xFFb3b3b3))
              ])
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const Icon(Icons.grid_view, color: Color(0xFF6467e7)),
                Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text('小程序'))
              ]),
              Row(children: const [
                Icon(Icons.chevron_right, color: Color(0xFFb3b3b3))
              ])
            ],
          ),
        ),
      ]),
    );
  }
}
