
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  //width: 10.0,
                  height: 40.0,
                ),
                TextFormField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  // onChanged: (value){
                  //   print(value);
                  // }

                  decoration: InputDecoration(
                    // hintText: 'Email Address',
                    labelText: 'Email Address',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  //width: 10.0,
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordcontroller,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  // onChanged: (value){
                  //   print(value);
                  // }

                  decoration: InputDecoration(
                    // hintText: 'Email Address',
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.password,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  //width: 10.0,
                  height: 15.0,
                ),
                defaultbutton(
                  text: 'login',
                  function: () {
                    print(emailcontroller.text);
                    print(passwordcontroller.text);
                  },
                ),
                SizedBox(
                  //width: 10.0,
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t Have an Account?'),
                    TextButton(
                      onPressed: () {},
                      child: Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
