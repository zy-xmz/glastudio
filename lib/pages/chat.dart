import 'package:flutter/material.dart';
// 引入自定义的导航栏组件
import 'package:glastudio/components/custom_bar.dart';
// 引入自定义的搜索栏按钮组件
import 'package:glastudio/components/search_bar_btn.dart';
// 引入行内侧滑插件flutter_slidable
import 'package:flutter_slidable/flutter_slidable.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomBar(title: '聊天', actions: [
          // 定义一个点击显示菜单的按钮
          PopupMenuButton(
            icon:
                const Icon(Icons.add_circle_outline, color: Color(0xFF323232)),
            color: const Color(0x99000000),
            // offset控制菜单弹窗的位置
            offset: const Offset(0, 50),
            // RoundedRectangleBorder 圆角矩形
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            // 创建菜单
            itemBuilder: (context) => [
              // 菜单项
              PopupMenuItem(
                  child: Row(children: [
                Container(
                    child: const Icon(Icons.wechat),
                    margin: const EdgeInsets.only(right: 10)),
                const Text('发起群聊', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(
                  child: Row(children: [
                Container(
                    child: const Icon(Icons.person_add_alt_1),
                    margin: const EdgeInsets.only(right: 10)),
                const Text('添加朋友', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(
                  child: Row(children: [
                Container(
                    child: const Icon(Icons.qr_code_scanner),
                    margin: const EdgeInsets.only(right: 10)),
                const Text('扫一扫', style: TextStyle(color: Colors.white))
              ])),
              // 菜单项
              PopupMenuItem(
                  child: Row(children: [
                Container(
                    child: const Icon(Icons.credit_score),
                    margin: const EdgeInsets.only(right: 10)),
                const Text('收付款', style: TextStyle(color: Colors.white))
              ])),
            ],
          ),
        ]),
        // 滚动组件
        body: CustomScrollView(
            // slivers 组件列表
            slivers: [
              const SliverToBoxAdapter(
                  // 自定义的搜索栏按钮
                  child: SearchBarBtn()),
              // SlidableAutoCloseBehavior flutter_slidable插件提供的类；作用：同时只有一个滑动菜单
              SlidableAutoCloseBehavior(
                // 列表
                child: SliverList(
                    // SliverChildBuilderDelegate 使用builder回调创建子组件
                    delegate: SliverChildBuilderDelegate((content, int index) {
                  // 使用flutter_slidable侧滑插件
                  return Slidable(
                    // 右边向左滑
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (BuildContext context) {},
                          backgroundColor: const Color(0xFF3d83e6),
                          foregroundColor: Colors.white,
                          label: '标为已读',
                        ), //操作一
                        SlidableAction(
                          onPressed: (BuildContext context) {},
                          backgroundColor: const Color(0xFFeca150),
                          foregroundColor: Colors.white,
                          label: '不显示',
                        ), //操作二
                        SlidableAction(
                          onPressed: (BuildContext context) {},
                          backgroundColor: const Color(0xFFe75e58),
                          foregroundColor: Colors.white,
                          label: '删除',
                        ), //操作三
                      ],
                    ),
                    // 行内容
                    child: Column(children: [
                      // 单行内容
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/chart_detail',
                              arguments: {'name': '小白胖'});
                        },
                        child: Container(
                          color: Colors.white, // 单行背景色设置为白色
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 16), // 设置行内水平和垂直方向上的边距
                          child: Row(children: [
                            // 左边头像
                            Container(
                              margin: const EdgeInsets.only(
                                  right: 10), // 设置头像到右边内容的距离
                              child: ClipRRect(
                                  child: Image.asset('lib/assets/img/head.jpg',
                                      width: 50, height: 50), // 设置头像
                                  borderRadius:
                                      BorderRadius.circular(4) // 设置头像圆角
                                  ),
                            ),
                            // 右边内容
                            Expanded(
                              child: Column(children: [
                                Row(children: const [
                                  Expanded(
                                      child: Text('小白',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Color(0xFF323232),
                                              fontWeight: FontWeight.bold),
                                          overflow: TextOverflow
                                              .ellipsis)), // 设置主标题，自动占满剩余空间
                                  Text(
                                    '昨天18:33',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFFcccccc)),
                                  ) // 设置右边的时间
                                ]),
                                Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: Row(children: const [
                                    Expanded(
                                      child: Text('小胖米粥，今天晚上吃什么？吃元宵咋样？我要飞的更高',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFF969696)),
                                          overflow: TextOverflow
                                              .ellipsis // 设置文本溢出的处理方式
                                          ),
                                    ),
                                    Icon(Icons.notifications_off_outlined,
                                        color: Color(0xFFcccccc), size: 18)
                                  ]),
                                )
                              ]),
                            ),
                          ]),
                        ),
                      ),
                      // 分割线
                      const Divider(
                          color: Color(0xFFeeeeee), // 分割线颜色
                          height: 0, // 分割线距离上下的高度
                          indent: 70, // 缩进长度
                          thickness: 1 // 分割线的厚度
                          )
                    ]),
                  );
                }, childCount: 10)),
              )
            ])
        // 搜索框
        );
  }
}
