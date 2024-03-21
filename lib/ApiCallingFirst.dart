import 'dart:convert';
import 'package:http/http.dart' as http;

class FirstApi {
  static String ApiLink = 'https://api.tvmaze.com/shows';
  static List ApiData = [];
  static List ShareApiData = [];
  static Future<void> ApiCallingFirst() async {
    final Requesting = await http.get(Uri.parse(ApiLink));
    if (Requesting.statusCode == 200) {
      ApiData = jsonDecode(Requesting.body);
      ApiData.map((item) => item as Map<String, dynamic>).toList();
      ShareApiData = ApiData;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
