import 'package:flutter/material.dart';
import 'package:login_api_prac/model/usermodel.dart';
import 'package:login_api_prac/repository/userrepository.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../view/dashboard.dart';

class usercontroller extends ControllerMVC {
  usermodel user = usermodel();
  loginInfo(context) async {
    usermodel response = await loginrepo(user);
    print(response.phone);
    print(response.email);
    if (response is usermodel) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const dashboard()));
    }
  }
}
