/*
 * Created: Thursday, 14th March 2019 1:22:42 am
 *   
 * Author: Mohsin AR | mohsinazeemrind@gmail.com
 *   
 * Copyright (c) 2019 signbox software Inc.
 */
import 'package:demoblocpattern_angulardart/src/entity/User.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class UserRepository {
  final http.Client client;
  final String baseUrl = "https://reqres.in/api/users?page=2";
  UserRepository(this.client);

  Future<List<User>> get users async {
    final response = await this.client.get(Uri.parse("$baseUrl"));    
    final Map<String, dynamic> results = json.decode(response.body);   
    
    if(response.statusCode == 200) {
      return User.fromJsonList(results['data']);
    } else {
      return throw UserErr(message: results['message'] as String);
    }
  }
}
