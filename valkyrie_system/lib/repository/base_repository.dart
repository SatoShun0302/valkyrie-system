import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class BaseRepository {

  Future<Response> getApi(String uri) async {
    final url = Uri.parse(uri);
    final response = await http.get(url);
    return response;
  }

  Future<Response> postApi(String uri, {Object jsonBody = const {}}) async {
    final url = Uri.parse(uri);
    final response = await http.post(url, body: jsonBody);
    return response;
  }

  getBody(Response response) {
    var body = convert.utf8.decode(response.bodyBytes);
    var type = convert.json.decode(body).runtimeType.toString();
    switch(type) {
      case 'List<dynamic>':
        return convert.json.decode(body) as List<dynamic>;
      case '_Map<String, dynamic>':
        return convert.json.decode(body) as Map<String, dynamic>;
    }
  }
}