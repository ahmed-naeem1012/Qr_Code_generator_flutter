// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../Declarations/Constants/constants.dart';

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.hintText,
    required this.inputType,
    required this.emailfield,
  }) : super(key: key);
  final String hintText;
  final TextInputType inputType;
  TextEditingController emailfield = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: emailfield,
        style: kBodyText.copyWith(color: Colors.white),
        keyboardType: inputType,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(20),
          hintText: hintText,
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
