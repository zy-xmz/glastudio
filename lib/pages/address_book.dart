import 'package:flutter/material.dart';

class AddressBook extends StatelessWidget {
  const AddressBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('通讯录', style: TextStyle(color: Color(0xFF323232))),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
                onPressed: () => {}, icon: const Icon(Icons.person_add_alt))
          ],
        ),
        body: Column(children: [
          Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Icon(Icons.search), Text('搜索')]),
              decoration: const BoxDecoration(color: Colors.white)),
          // Flexible组件可以控制Row、Column、Flex的子控件在父控件中的占比
          Flexible(
            child: ListView.separated(
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      // 左边内容
                      leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset('lib/assets/img/head.jpg',
                              width: 50, height: 50)),
                      // 中间第一行标题
                      title: const Text('新的朋友',
                          style: TextStyle(color: Color(0xFF323232))),
                      // 是否有选中效果
                      selected: true,
                      // 点击事件
                      onTap: () => {});
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                        height: 10,
                        thickness: 1,
                        indent: 70,
                        color: Color(0xFFeeeeee)),
                itemCount: 20),
          )
        ]));
  }
}
