import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('聊天')),
        body: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              for (int index = 1; index < 21; index++)
                ListTile(
                  leading: Image.network(
                      'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2F22%2Fc4%2F51%2F2a%2Fd49ad33d13d3801e719a8a2474613a09.jpg'),
                  trailing: const Text('时间'),
                  title: const Text('某月某日'),
                  subtitle: const Text('就买这个吧'),
                  selected: true,
                  onTap: () => {},
                )
            ]));
  }
}
