import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'package:flutter/services.dart';

class Configuration {
  Future<Map<String, dynamic>> getConfJSON() async {
    final response = rootBundle.loadString('assets/conf.json');
    final data = json.decode(await response);
    return data;
  }

  Map<String, dynamic>? getConf() {
    Map<String, dynamic>? data;
    LinkedHashMap<String, dynamic> json;
    Future(() async {
      json = jsonDecode(await rootBundle.loadString('assets/conf.json'));
      data = Map.from(json.map((key, value) {
          return MapEntry(key.toString(), value.toString());
      }));
    });
    Timer(Duration(seconds: 4), () {
      if (data != null) {
        print(data);
      }
    });
    return data;
  }
}
