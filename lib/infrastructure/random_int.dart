import 'package:flutter/services.dart';

abstract final class RandomIntTest {
  static const _platform = MethodChannel('rand_test');

  static Future<int> getRandomInt() async {
    try {
      final int result = await _platform.invokeMethod('rand_test', {
        'a': 5,
        'b': 5,
      });
      return result;
    } catch (_) {
      return -1;
    }
  }
}
