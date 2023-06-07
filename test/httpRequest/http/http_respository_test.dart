import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_study/httpRequest/http/http_repository.dart';
void main() {

  HttpRepository repository = HttpRepository();
  group('httpRepository Test', () {

    test('httpRepository has data', () async {

      var cubeDatas = await Hive.openBox('test');
      var count = cubeDatas.get("count");
      var cursor = cubeDatas.get("cursor");

      final mockCursor = "Qz0lKQ4j8JG3G-fTs1mqE-tpTk3ez0xKzbsFA0BZUzSHT9eiZA==";
      expect(count, 10);
      expect(cursor, mockCursor);
    });

    test('httpRepository no data', () async {

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String? cubeDataStr = prefs.getString('cubeData');
    });
    // decrement
  });

}