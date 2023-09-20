import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/circle.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 65, bottom: 25),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Welcome Onboard',
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Let\'s help you to get healthy',
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 55,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'eg. Lucy',
                              hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter your Name',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            )),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 55,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'eg. 20',
                              hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter your Age',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            )),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 55,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'eg. 45',
                              hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter your Weight',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            )),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 55,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'eg. 5ft',
                              hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter your Height',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            )),
                      ),
                      SizedBox(
                        height: 45,
                      ),
                      Container(
                        height: 55,
                        width: 354,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              hintText: 'eg. abc@gmail.com',
                              hintStyle: TextStyle(color: Colors.black),
                              labelText: 'Enter your Email',
                              labelStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25)),
                            )),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 55,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff8a76da),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Register',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have and account?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(Login());
                            },
                            child: Text(
                              'Sign In',
                              style: TextStyle(color: Colors.green),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
