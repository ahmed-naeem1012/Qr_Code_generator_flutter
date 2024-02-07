// ignore_for_file: sized_box_for_whitespace, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:qr_generator_app/Presentation/Declarations/Constants/constants.dart';
// import 'package:qr_generator_app/Presentation/Screens/Homepage/UI/register_page.dart';
import 'package:qr_generator_app/Presentation/Screens/Homepage/UI/signin_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Image(
                          image:
                              AssetImage('assets/Images/team_illustration.png'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Explore University\n with ease.",
                      style: kHeadline,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: const Text(
                        "Bring together your Qrs, your tools, and a Camera.Use our new mobile app explore the campus.",
                        style: kBodyText,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[850],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Row(
                    children: [
                      // Expanded(
                      //     child: ElevatedButton(
                      //         onPressed: () {
                      //           Navigator.push(
                      //             context,
                      //             MaterialPageRoute(
                      //                 builder: (context) => RegisterPage()),
                      //           );
                      //         },
                      //         style: ElevatedButton.styleFrom(
                      //             backgroundColor: Colors.white,
                      //             shape: RoundedRectangleBorder(
                      //               borderRadius:
                      //                   BorderRadius.circular(14), // <-- Radius
                      //             ),
                      //             padding: const EdgeInsets.symmetric(
                      //                 horizontal: 12, vertical: 20),
                      //             textStyle: const TextStyle(
                      //                 fontSize: 12, color: Colors.white)),
                      //         child: const Text(
                      //           'Register',
                      //           style: TextStyle(
                      //               color: Colors.black,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w600),
                      //         ))),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[850],
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(14), // <-- Radius
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 20),
                                  textStyle: const TextStyle(
                                      fontSize: 12, color: Colors.white)),
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ))),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
