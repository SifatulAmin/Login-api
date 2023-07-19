import 'package:login_api_prac/model/taxpayer.dart';

class usermodel {
  int id = 0;
  String name = "";
  String username = "";
  String email = "";
  String password = "";
  String phone = "";
  int roleid = 0;

  Taxpayer taxpayer = Taxpayer();
  usermodel();

  usermodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    roleid = json['role_id'];

    taxpayer = Taxpayer.fromJson(json['taxpayer']);
  }
}
