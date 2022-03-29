import 'package:flutter/material.dart';
import 'package:glastudio/components/custom_bar.dart';
import 'package:glastudio/components/search_bar_btn.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBar(
        title: '聊天',
        actions: [
          // 定义一个点击显示菜单的按钮
          PopupMenuButton(
            icon: const Icon(Icons.add_circle_outline,
                color: Color(0xFF323232)),
            color: const Color(0x99000000),
            // offset控制菜单弹窗的位置
            offset: const Offset(0, 50),
            // RoundedRectangleBorder 圆角矩形
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            ),
            // 创建菜单
            itemBuilder: (context) => [
              // 菜单项
              PopupMenuItem(child: Row(children: [
                Container(child: const Icon(Icons.wechat), margin: const EdgeInsets.only(right: 10)),
                const Text('发起群聊', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(child: Row(children: [
                Container(child: const Icon(Icons.person_add_alt_1), margin: const EdgeInsets.only(right: 10)),
                const Text('添加朋友', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(child: Row(children: [
                Container(child: const Icon(Icons.qr_code_scanner), margin: const EdgeInsets.only(right: 10)),
                const Text('扫一扫', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(child: Row(children: [
                Container(child: const Icon(Icons.credit_score), margin: const EdgeInsets.only(right: 10)),
                const Text('收付款', style: TextStyle(color: Colors.white))
              ])),
            ],
          )
        ]),
        body: Column(children: [
          const SearchBarBtn(),
          Container(
            color: Colors.white,
            child: Column(children: [
              ListTile(
                  // 左边内容
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('lib/assets/img/head.jpg',
                        width: 50, height: 50)),
                // 右边内容
                trailing: const Text('回复时间',
                    style: TextStyle(color: Color(0xFFcccccc))),
                // 中间第一行标题
                title: const Text('标题',
                    style: TextStyle(color: Color(0xFF323232))),
                // 中间第二行标题
                subtitle: const Text('副标题',
                    style: TextStyle(color: Color(0xFF7f7f7f))),
                // 是否有选中效果
                selected: true,
                // 点击事件
                onTap: () => {}),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 70,
                  color: Color(0xFFeeeeee)),
              ListTile(
                  // 左边内容
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('lib/assets/img/head.jpg',
                        width: 50, height: 50)),
                // 右边内容
                trailing: const Text('回复时间',
                    style: TextStyle(color: Color(0xFFcccccc))),
                // 中间第一行标题
                title: const Text('标题',
                    style: TextStyle(color: Color(0xFF323232))),
                // 中间第二行标题
                subtitle: const Text('副标题',
                    style: TextStyle(color: Color(0xFF7f7f7f))),
                // 是否有选中效果
                selected: true,
                // 点击事件
                onTap: () => {}),
                const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 70,
                  color: Color(0xFFeeeeee)),
            ])
          )
        ]),// 搜索框
        );
  }
}
