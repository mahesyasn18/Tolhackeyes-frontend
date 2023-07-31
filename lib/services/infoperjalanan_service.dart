import 'dart:convert';

import 'package:tolhackeys/models/infoperjalanan_models.dart';
import 'package:http/http.dart' as http;

class infoperjalananService {
  String baseUrl =
      'https://2640-114-4-218-2.ngrok-free.app/api/tollhackeyes/user';
  Future<List<infoperjalananModel>> getinfoperjalanan() async {
    var url = '$baseUrl/info_perjalanans';

    var headers = {'Content-Type': 'application/json'};
    var response = await http.get(Uri.parse(url), headers: headers);

    print(response.body);

    try {
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData =
            jsonDecode(response.body)['message'];
        List<infoperjalananModel> info = [];

        // Now, responseData is a Map with key-value pairs, so we need to iterate over the values (perjalanan1, perjalanan2, etc.).
        for (var item in responseData.values) {
          info.add(infoperjalananModel.fromJson(item));
        }

        print(info);
        return info;
      } else {
        throw Exception('Failed to get info: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error occurred while fetching info: $e');
    }
  }
}
