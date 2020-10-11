/*
 * @Author: your name
 * @Date: 2020-08-26 17:04:45
 * @LastEditTime: 2020-09-10 10:30:31
 * @LastEditors: your name
 * @Description: In User Settings Edit
 * @FilePath: /tejia_user/plugins/amaplocation/test/amaplocation_test.dart
 */
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('amaplocation');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

//  test('getPlatformVersion', () async {
//    expect(await Amaplocation.platformVersion, '42');
//  });
}
