import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  // createState() 创建state实例
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // 搜索指定内容分类
  static List typeList = [
    { 'text': '朋友圈', 'link': '' },
    { 'text': '文章', 'link': '' },
    { 'text': '公众号', 'link': '' },
    { 'text': '小程序', 'link': '' },
    { 'text': '音乐', 'link': '' },
    { 'text': '表情', 'link': '' },
    { 'text': '服务', 'link': '' },
  ];

  // 定义输入框的焦点节点
  final FocusNode _inpFocusNode = FocusNode();

  // 定义获取焦点的状态
  bool focusStatus = false;
  
  // 获取和失去焦点处理
  void _inpFocusHandle () {
    if (!_inpFocusNode.hasFocus) {
      // 如果失焦，则隐藏“按住说话”
      setState(() {
        focusStatus = false;
      });
    } else {
      // 如果获取焦点，则显示“按住说话”
      setState(() {
        focusStatus = true;
      });
    }
  }

  // 初始化处理
  @override
  void initState () {
    super.initState();
    // 添加监听（必须在初始化中添加）
    _inpFocusNode.addListener(_inpFocusHandle);
  }

  // 页面销毁时
  @override
  void dispose () {
    // 清除监听
    _inpFocusNode.removeListener(_inpFocusHandle);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  focusNode: _inpFocusNode, // 这个输入框的焦点节点
                  style: const TextStyle(fontSize: 21), // 设置文本大小
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5), // 设置输入内容与边框的内边距
                    prefixIcon: Icon(Icons.search, color: Colors.grey[400]),  // 设置前缀icon（在提示文本的前面显示）
                    hintText: '搜索', // 默认提示文本
                    hintStyle: TextStyle(color: Colors.grey[400]), // 设置提示文本的颜色
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6), // 设置输入框的圆角
                      borderSide: BorderSide.none // 去掉输入框的边框
                    ),
                    filled: true, // 输入框背景是否填充
                    fillColor: Colors.white, // 输入框填充白色
                  )),
              ),
              TextButton(
                  onPressed: () {
                    // 关闭当前页
                    Navigator.pop(context);
                  },
                  child: const Text('取消', style: TextStyle(color: Color(0xFF646464), fontSize: 20))),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 60, bottom: 20), // 设置上边距、下边距
          child: const Text('搜索指定内容', style: TextStyle(color: Color(0xFF969696),fontSize: 18)) // 文本 
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 50), // 内边距
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,  // 单列最大宽度
              childAspectRatio: 2  // 单项的宽高比
            ),
            itemCount: typeList.length,  // 要展示的个数
            itemBuilder: (BuildContext context, int index) {
              return TextButton(
                onPressed: () => {},
                child: Text(typeList[index]['text'],  // 寻找index在typeList对应的类别名称
                  style: const TextStyle(color: Color(0xFF63658c), fontSize: 20)  // 设置文本颜色和字体大小
                ));
            }),  // GridView.builder动态创建子widget
          ),
          Visibility(
            visible: focusStatus, // 根据textField的焦点状态来显示或隐藏
            child: Align(
              alignment: Alignment.bottomCenter, // “按住说话”的位置
              child: Column(children: [
                Container(
                  width: 80, // 图标背景的宽度
                  height: 80, // 图标背景的高度
                  decoration: BoxDecoration(
                    color: Colors.white, // 图标背景颜色
                    borderRadius: BorderRadius.circular(100)  // 图标背景的圆角
                  ),
                  child: Icon(Icons.mic, size: 48, color: Colors.grey[700])  // 图标
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),  // 内边距
                  child: Text('按住说话', style: TextStyle(color: Color(0xFF969696)))  // 文本
                )
              ],)
            ),
          )] // 搜索框
    ));
  }
}
