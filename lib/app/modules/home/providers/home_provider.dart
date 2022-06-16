import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class HomeProvider extends GetConnect {
  Future<dynamic> getList() async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    final response = await http.get(url);

    return jsonDecode(response.body);
  }

  Future<dynamic> getListDetail(id) async {
    Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts/${id}");

    final response = await http.get(url);

    return jsonDecode(response.body);
  }
}
