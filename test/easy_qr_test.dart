import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:easy_qr/easy_qr.dart';

void main() {
  const MethodChannel channel = MethodChannel('easy_qr');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EasyQr.platformVersion, '42');
  });
}
