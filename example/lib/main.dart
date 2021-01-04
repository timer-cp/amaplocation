/*
 * @Author: your name
 * @Date: 2020-08-26 17:04:45
 * @LastEditTime: 2020-09-10 10:30:39
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: /tejia_user/plugins/amaplocation/example/lib/main.dart
 */
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:amaplocation/amaplocation.dart';

import 'package:amaplocation/amap_location_option.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    Amaplocation.setApiKey("5718d4c15b7752c89b1677025024fff8", "c97373597303138ada461687ad239a70");
    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('高德定位插件示例'),
        ),
        body: FlatButton(
          child: Text('获取定位'),
          color: Colors.blue,
          onPressed: () {
            Amaplocation amaplocation = Amaplocation();
            // 定位参数：是否连续定位
            AMapLocationOption option = AMapLocationOption(onceLocation: false);
            // 监听定位回调
            amaplocation.onLocationChanged().listen((event) {
              debugPrint('$event');
            });
            // 启动定位
            amaplocation.startLocation();
            // 设置定位参数
            amaplocation.setLocationOption(option);
          },
        ),
      ),
    );
  }
}
