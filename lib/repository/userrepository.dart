import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:login_api_prac/model/usermodel.dart';

loginrepo(usermodel user) async {
  usermodel usr = usermodel();
  final url = 'http://103.177.125.44:8080/api/login';
  final response = await http.post(Uri.parse(url), body: {
    "username": user.username,
    "password": user.password,
  });
  if (response.statusCode == 200) {
    print(response.statusCode);
    usr = usermodel.fromJson(
      jsonDecode(response.body)["data"],
    );
    print(usr.name);
    return usr;
  } else {
    return json.decode(response.body)["message"];
  }
}
