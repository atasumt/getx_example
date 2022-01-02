import 'dart:convert';

import 'package:getx_example/model/place_holder_model.dart';
import 'package:http/http.dart' as http;

class PlaceHolderServices {
  final _baseUrl = Uri.parse('https://jsonplaceholder.typicode.com/posts/1');

  Future<PlaceHolderModel> generateDetail() async {
    var response = await http.get(_baseUrl);
    final responseBody = response.body;

    final Map<String, dynamic> decodedBody = jsonDecode(responseBody);
    final result = PlaceHolderModel.fromJson(decodedBody);

    if (response.statusCode == 200) {
      return result;
    } else {
      throw Exception('Verilerde Sıkıntı Var ${response.statusCode}');
    }
  }
}
