import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';

class Discovery extends StatelessWidget {
  const Discovery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(title: '发现', actions: [
        IconButton(
            onPressed: () => {},
            icon:
                const Icon(Icons.add_circle_outline, color: Color(0xFF323232)))
      ]),
      body: ListView(children: [
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: const [Icon(Icons.camera), Text('朋友圈')]),
              Row(children: [
                ClipRRect(
                  child: Image.asset(
                    'lib/assets/img/head.jpg',
                    width: 30,
                    height: 30,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                const Icon(Icons.chevron_right)
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
                  Row(children: const [
                    Icon(Icons.play_circle_outline),
                    Text('视频号')
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
                    const Icon(Icons.chevron_right)
                  ])
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: const [Icon(Icons.whatshot), Text('直播')]),
                  Row(children: [
                    ClipRRect(
                      child: Image.asset(
                        'lib/assets/img/head.jpg',
                        width: 30,
                        height: 30,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    const Icon(Icons.chevron_right)
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
              Row(children: const [Icon(Icons.qr_code_scanner), Text('扫一扫')]),
              Row(children: [
                ClipRRect(
                  child: Image.asset(
                    'lib/assets/img/head.jpg',
                    width: 30,
                    height: 30,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                const Icon(Icons.chevron_right)
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
              Row(children: const [Icon(Icons.grid_view), Text('小程序')]),
              Row(children: [
                ClipRRect(
                  child: Image.asset(
                    'lib/assets/img/head.jpg',
                    width: 30,
                    height: 30,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                const Icon(Icons.chevron_right)
              ])
            ],
          ),
        ),
      ]),
    );
  }
}
