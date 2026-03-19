
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key:formKey ,
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
                  defaultformfield(
                    controller: emailcontroller,
                    label: 'Email',
                    prefix: Icons.email,
                    type: TextInputType.emailAddress,
                    validate: (value){
                      if(value!.isEmpty){
                        return 'email must not be empty!';
                      }
                    },
                  ),
                  SizedBox(
                    //width: 10.0,
                    height: 15.0,
                  ),
              defaultformfield(
                controller: passwordcontroller,
                label: 'Password',
                prefix: Icons.lock,
                suffix: Icons.password,
                isPassword: isPassword,
                SuffixPressed: (){
                  setState(() {
                    print(isPassword);
                    isPassword=!isPassword;
                    print(isPassword);

                  });

                },

                type: TextInputType.visiblePassword,
                validate: (value){
                  if(value!.isEmpty){
                    return 'password must not be empty!';
                  }
                },

              ),

                  SizedBox(
                    //width: 10.0,
                    height: 15.0,
                  ),
                  defaultbutton(
                    text: 'login',
                    function: () {
                      if(formKey.currentState!.validate()){
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      }

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
      ),
    );
  }
}
