import 'package:flutter/material.dart';
import 'package:udemy_flutter/home_screen.dart';
import 'package:udemy_flutter/meesenger_screen.dart';
import 'package:udemy_flutter/user_screen.dart';

import 'BMI_calculator.dart';
import 'counter_screen.dart';
import 'login_screen.dart';

void main() {

  runApp(Myapp());

}

class Myapp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: BmiScreen(),

    );
  }


}