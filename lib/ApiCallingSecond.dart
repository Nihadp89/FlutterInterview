import 'dart:convert';

import 'package:http/http.dart' as http;

class SecondApiCalling {
  static late List ApiDatIndex;
  static String Cast = 'https://api.tvmaze.com/shows/1/cast';
  static late List ApiDataSecond;

  static Future<void> apiCallingSecond() async {
    final Requesting = await http.get(Uri.parse(Cast));
    if (Requesting.statusCode == 200) {
      ApiDataSecond = jsonDecode(Requesting.body);
      ApiDataSecond.map((item) => item as Map<String, dynamic>).toList();
      ApiDatIndex = ApiDataSecond;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
