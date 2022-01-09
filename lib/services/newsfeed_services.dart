import 'dart:io';

import 'package:exercise1_login/Models/newsfeed.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = 'https://dummyapi.io/data/v1';

  Future<Newsfeed> getNewsfeed(int limit) async {
    Map<String, String> header = {
      'Content-type': 'application/json',
      'app-id': '61d037765fd8ea6f601ab12d'
    };
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/post?limit=$limit'),
        headers: header,
      );

      if (response.statusCode == 200) {
        print(response.body);
        return newsfeedFromJson(response.body);
      } else {
        return Newsfeed();
      }
    } on SocketException catch (_) {
      throw 'No internet connection';
    } on Exception catch (err) {
      throw Exception(err);
    }
  }
}
