// ignore_for_file: unnecessary_new, must_be_immutable

import 'package:flutter/material.dart';
import 'package:qr_generator_app/Presentation/Declarations/Constants/constants.dart';

class MyPasswordField extends StatelessWidget {
  MyPasswordField({
    Key? key,
    required this.isPasswordVisible,
    required this.onTap,
    required this.passController,
  }) : super(key: key);

  final bool isPasswordVisible;
  final Function onTap;
  TextEditingController passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: passController,
        style: kBodyText.copyWith(
          color: Colors.white,
        ),
        obscureText: isPasswordVisible,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          // suffixIcon: Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
          //   child: IconButton(
          //     splashColor: Colors.transparent,
          //     highlightColor: Colors.transparent,
          //     onPressed: () {},
          //     icon: Icon(
          //       isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          //       color: Colors.grey,
          //     ),
          //   ),
          // ),
          contentPadding: const EdgeInsets.all(20),
          hintText: 'Password',
          hintStyle: kBodyText,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
