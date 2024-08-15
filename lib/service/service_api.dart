import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/model_api.dart';

class ApiService {
  final String baseUrl = 'https://reqres.in/api';

  Future<List<UserModel>> fetchUsers(int page) async {
    final response = await http.get(Uri.parse('$baseUrl/users?page=$page'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body)['data'];
      return data.map((json) => UserModel.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  }
}
