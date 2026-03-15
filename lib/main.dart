import 'package:flutter/material.dart';
import 'package:udemy_flutter/modules/home/home_screen.dart';
import 'package:udemy_flutter/modules/messenger/meesenger_screen.dart';
import 'package:udemy_flutter/modules/users/user_screen.dart';

import 'modules/bmi/BMI_calculator.dart';
import 'modules/bmi_result/bmi_result_screen.dart';
import 'modules/counter/counter_screen.dart';
import 'modules/login/login_screen.dart';

void main() {

  runApp(Myapp());

}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: LoginScreen(),

    );
  }


}