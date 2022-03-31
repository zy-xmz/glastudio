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

  // 配置路由表（给路由起名）
  final routes = {
    '/search': (context) => const Search(),
    '/chat': (context) => const Chat(),
    '/chart_detail': (context, {arguments}) => ChartDetail(arguments: arguments)
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      theme: ThemeData.light(),
      home: const BottomNavigation(),
      // onGenerateRoute路由拦截处理（前提：MaterialApp下没有定义routes）
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
