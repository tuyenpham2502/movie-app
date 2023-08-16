import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  final String errorText;
  const PasswordFormField(
      {super.key,
      required this.controller,
      this.validator,
      required this.errorText});

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  late TextEditingController _passwordController;
  bool showPassword = false;
  bool password = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _passwordController = widget.controller;
  }

  void _onCheckPassword() {
    String _text = _passwordController.text;
    if (!password && _text.isNotEmpty) {
      setState(() {
        password = true;
      });
    } else if (password && _text.isEmpty) {
      setState(() {
        password = false;
      });
    }
  }

  void _onToggleShowPass() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: !showPassword,
          onChanged: (value) {
            _onCheckPassword();
          },
          validator: widget.validator,
          controller: _passwordController,
          decoration: InputDecoration(
            suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    password
                        ? GestureDetector(
                            onTap: () {
                              _onToggleShowPass();
                            },
                            child: const Icon(
                              Icons.remove_red_eye_outlined,
                              color: Colors.white,
                            ),
                          )
                        : const SizedBox(),
                  ],
                )),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            label: const Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 12.h),
            child: widget.errorText != null
                ? Text(
                    widget.errorText,
                    style: const TextStyle(color: Colors.red),
                  )
                : const SizedBox())
      ],
    );
  }
}
