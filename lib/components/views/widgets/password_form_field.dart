import 'package:flutter/material.dart';

class PasswordFormfield extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const PasswordFormfield({super.key, required this.controller, this.validator});

  @override
  State<PasswordFormfield> createState() => _PasswordFormfieldState();
}

class _PasswordFormfieldState extends State<PasswordFormfield> {
  late TextEditingController _passwordController;
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      obscureText: true,
      validator: widget.validator,

      controller: _passwordController,
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.visibility),


        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        label: Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
