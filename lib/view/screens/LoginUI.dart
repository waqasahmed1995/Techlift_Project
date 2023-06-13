


import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../controller/validator.dart';
import '../../utils/routes_name.dart';
import '../custom/my_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();

  bool _obscureText =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Students',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Rubik Medium',
                            color: Color(0xff203142)),
                      ),
                      Text(
                        'Portal',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Rubik Medium',
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff203142)),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'Welcome to Student Portal\n Please Enter your credentials',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Rubik Regular',
                      fontSize: 16,
                      color: Color(0xff4C9580)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.alternate_email,
                        color: Color(0xff323F4B),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),

              // SizedBox(
              //   height: 5,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      prefixIcon: Icon(
                        Icons.lock_open,
                        color: Color(0xff323F4B),
                      ),
                      suffixIcon: GestureDetector(
                         onTap: (){
                           setState(() {
                             _obscureText = !_obscureText;
                           });
                         },
                          child: Icon(
                              _obscureText ? Icons.visibility_off_outlined: Icons.visibility_outlined),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(left: 250),
                child: Text('Forget Password?', style: TextStyle(decoration: TextDecoration.underline),),
              ),
              SizedBox(
                height: 100,
              ),
              MyButton("Login", () {
                Navigator.pushNamed(context, RouteName.bottomNavBar);
              }),
              //MyButton("Login", () {}),
              // Container(
              //   height: 50,
              //   width: 300,
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Center(
              //     child:  Text(
              //       'Login',
              //       style: TextStyle(
              //           fontSize: 20,
              //           fontFamily: 'Rubik Regular',
              //           color: Colors.white),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      'Dont have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Rubik Regular',
                          fontSize: 16,
                          color: Color(0xff4C9580)),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){

                      Navigator.pushNamed(context, RouteName.signupScreen);
                    },
                    child: Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Rubik Medium',
                          fontSize: 16,
                          color: Colors.blue),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void signin() {
    if (_emailController.text.isEmpty) {
      Flushbar(
        title: 'Error',
        messageText: Text('Email cant be Empty'),
        duration: Duration(seconds: 2),
          flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }
    if (_passwordController.text.isEmpty) {
      Flushbar(
        title: 'Error',
        messageText: Text('Password cant be Empty'),
        duration: Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }
    if (Validator.isEmailValidate(_emailController.text.toString())) {
      Flushbar(
        title: 'Error',
        messageText: Text('Please Enter a Valid Email e.g. waqas@gmail.com'),
        duration: Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }
    if (!_emailController.text.endsWith('gmail.com')) {
      Flushbar(
        title: 'Error',
        messageText: Text('Please Enter a Valid Email e.g. waqas@gmail.com'),
        duration: Duration(seconds: 3),
          flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }
    if (Validator.isPasswordValidate(_passwordController.text.toString())) {
      Flushbar(
        title: 'Error',
        messageText: Text('Password must be 6 characters long & \nShould contain atleast one Capital letter & \nShould contain one Small letter & \nShould contain one Special character'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

      Navigator.pushNamed(context, RouteName.bottomNavBar);
    return;

  }
}


