import 'package:flutter/material.dart';

class Auth_Field extends StatelessWidget {
  final String input;
  const Auth_Field({
    super.key,
    required this.input,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: input,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
