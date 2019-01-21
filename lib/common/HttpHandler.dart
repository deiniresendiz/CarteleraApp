import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHandler{

  final String _baseUrl = "api.themoviedb.org";
  final String _lenguaje = "en-US";

  Future<dynamic> getJson(Uri uri) async{
    http.Response response = await http.get(uri);
    return json.decode(response.body).toString();
  }
}