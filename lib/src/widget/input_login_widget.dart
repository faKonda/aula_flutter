import 'package:flutter/material.dart';

class InputLoginWidget extends StatelessWidget {
  final IconData icon;
  final String hint;
  final bool obscure;

  const InputLoginWidget({
    required this.icon,
    required this.hint,
    required this.obscure,
    super.key
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(icon,
          color: Colors.white,),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white),
          focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.pinkAccent),
          ),
          ),
          style: TextStyle(color: Colors.white),
          obscureText: obscure,
        ),
      );
  }
}