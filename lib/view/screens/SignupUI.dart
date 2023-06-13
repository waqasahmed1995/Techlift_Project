


import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../utils/routes_name.dart';
import '../custom/my_button.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController firstNameController= TextEditingController();
  TextEditingController lastNameController= TextEditingController();
  TextEditingController emailController= TextEditingController();
  TextEditingController passwordController= TextEditingController();
  TextEditingController confirmPasswordController= TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
                    'Create Account',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Rubik Medium',
                        color: Color(0xff203142)),
                  )),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Signed up?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Rubik Regular',
                          fontSize: 16,
                          color: Color(0xff4C9580)),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, RouteName.loginScreen);
                      },
                      child: Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Rubik Medium',
                            fontSize: 16,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: firstNameController,
                  decoration: InputDecoration(
                      hintText: 'First Name',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                      hintText: 'Last Name',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                      hintText: 'Email',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
                child: TextFormField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      fillColor: Color(0xffF8F9FA),
                      filled: true,
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffE4E7EB)),
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              SizedBox(
                height: 50,
              ),

              // Container(
              //   height: 50,
              //   width: 300,
              //   decoration: BoxDecoration(
              //       color: Colors.blue,
              //       borderRadius: BorderRadius.circular(10)),
              //   child: Center(
              //     child: Text(
              //       'SignUp',
              //       style: TextStyle(
              //           fontSize: 20,
              //           fontFamily: 'Rubik Regular',
              //           color: Colors.white),
              //     ),
              //   ),
              // ),
              MyButton("SignUp", signUpController
                //Navigator.pushNamed(context, RouteName.dashboardScreen);
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void signUpController(){
    if (firstNameController.text.toString().isEmpty ||
        lastNameController.text.toString().isEmpty ||
        emailController.text.toString().isEmpty ||
        passwordController.text.toString().isEmpty ||
        confirmPasswordController.text.toString().isEmpty){
      Flushbar(
        title: 'Error',
        messageText: Text('Please fill all the fields'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);

      return;
    }

    if(firstNameController.text.toString().length > 10){
      Flushbar(
        title: 'Error',
        messageText: Text('First Name should not be more than 10 characters'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }


    if(lastNameController.text.toString().length > 10){
      Flushbar(
        title: 'Error',
        messageText: Text('Last Name should not be more than 10 characters'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(!emailController.text.toString().contains('@')){
      Flushbar(
        title: 'Error',
        messageText: Text('Please Enter Valid Email'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(passwordController.text.toString().length < 6){
      Flushbar(
        title: 'Error',
        messageText: Text('Password Should contain atleast 6 Characters'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }


    if(!passwordController.text.toString().contains(RegExp(r'[A-Z]'))){
      Flushbar(
        title: 'Error',
        messageText: Text('Password Should contain atleast one Uppercase Character'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(!passwordController.text.toString().contains(RegExp(r'[a-z]'))){
      Flushbar(
        title: 'Error',
        messageText: Text('Password Should contain atleast one Lowercase Character'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(!passwordController.text.toString().contains(RegExp(r'[0-9]'))){
      Flushbar(
        title: 'Error',
        messageText: Text('Password Should contain atleast one Number'),
        duration: Duration(seconds: 3),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Colors.blue,
      )..show(context);
      return;
    }

    if(passwordController.text != confirmPasswordController.text){
      Flushbar(
        title: 'Error',
        messageText: Text('Password and Confirm password shouldd be same'),
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
