import 'package:flutter/material.dart';
import 'bottom_navigation.dart';
import 'pages/search.dart';
import 'pages/chat.dart';
import 'pages/chart_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  /*
    作用：配置路由表（命名路由，也就是给路由起名字）
    为什么不在MaterialApp中直接定义routes属性？
    因为在MaterialApp的routes属性中定义的路由，不会触发onGenerateRoute函数，
    如果想要用onGenerateRoute统一处理路由拦截，那么就不能在MaterialApp中定义routes
  */
  final routes = {
    '/search': (context) => const Search(),
    '/chat': (context) => const Chat(),
    '/chart_detail': (context, { arguments }) => ChartDetail(arguments: arguments), // 传参的写法
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData.light(),
      home: const BottomNavigation(),
      // onGenerateRoute路由拦截处理
      onGenerateRoute: (RouteSettings settings) {
        final String? name = settings.name;
        final Function? pageBuilder = routes[name];
        if (pageBuilder != null) {
          if (settings.arguments != null) {
            final Route route = MaterialPageRoute(
                builder: (context) =>
                    pageBuilder(context, arguments: settings.arguments));
            return route;
          } else {
            final Route route =
                MaterialPageRoute(builder: (context) => pageBuilder(context));
            return route;
          }
        }
        return null;
      },
    );
  }
}
