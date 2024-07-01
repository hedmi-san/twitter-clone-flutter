// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:twitter_clone/theme/theme.dart';

class Auth_Field extends StatelessWidget {
  final String input;
  final TextEditingController controller;
  final bool isobscure;
  const Auth_Field({
    super.key,
    required this.input,
    required this.controller,
    required this.isobscure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: TextFormField(
        obscureText: isobscure,
        decoration: InputDecoration(
            hintText: input,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Pallete.blueColor,
              ),
            ),
            contentPadding: const EdgeInsets.all(22)),
      ),
    );
  }
}
