// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, avoid_print, depend_on_referenced_packages, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:qr_generator_app/Presentation/Declarations/Constants/constants.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/UI/home_page.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/UI/register_page.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/Widgets/my_password_field.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/Widgets/my_text_field.dart';
import 'package:get/get.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = true;
  bool _isLoading = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    setState(() {
      _isLoading = true;
    });

    const String url = 'https://reqres.in/api/login';
    final Map<String, String> headers = {'Content-Type': 'application/json'};
    final Map<String, dynamic> body = {
      'email': _emailController.text.trim(),
      'password': _passwordController.text.trim(),
    };

    try {
      final response = await http.post(Uri.parse(url),
          headers: headers, body: json.encode(body));
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);

        Get.to(() => const HomePage(
              title: 'Explore USKT Admin',
            ));
        print('Login successful!');
        print('Token: ${responseData['token']}');
      } else {
        // Error occurred during login
        // Handle the error here (e.g., show an error message)
        print('Login failed. Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception occurred during login: $e');
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Image(
            width: 24,
            color: Colors.white,
            image: Svg('assets/Images/back_arrow.svg'),
          ),
        ),
      ),
      body: SafeArea(
        //to make page scrollable
        child: CustomScrollView(
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Welcome back.",
                            style: kHeadline,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "You've been missed!",
                            style: kBodyText2,
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          MyTextField(
                            emailfield: _emailController,
                            hintText: 'Phone, email or username',
                            inputType: TextInputType.text,
                          ),
                          MyPasswordField(
                            passController: _passwordController,
                            isPasswordVisible: isPasswordVisible,
                            onTap: () {
                              setState(() {
                                isPasswordVisible = !isPasswordVisible;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Dont't have an account? ",
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          child: Text(
                            'Register',
                            style: kBodyText.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          _login();

                          print(_emailController.text);
                          print(_passwordController.text);
                          // Navigator.of(context).pushReplacement(
                          //   MaterialPageRoute(
                          //       builder: (_) => const HomePage(
                          //             title: 'Explore USKT Admin',
                          //           )), // Replace with your next screen
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(14), // <-- Radius
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 160, vertical: 20),
                            textStyle: const TextStyle(
                                fontSize: 12, color: Colors.black)),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
