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
              icon: const Icon(Icons.add_circle_outline,
                  color: Color(0xFF323232)))
        ]),
        body: ListView(children: [
          Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Colors.white,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: const [
                      Icon(Icons.people),
                      Text('朋友圈'),
                    ]),
                    Row(
                      children: [
                        ClipRRect(
                          child: Image.asset(
                            'lib/assets/img/head.jpg',
                            width: 30,
                            height: 30,
                          ),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        const Text('赞过'),
                        const Icon(Icons.chevron_right)
                      ],
                    )
                  ]))
        ]));
  }
}
