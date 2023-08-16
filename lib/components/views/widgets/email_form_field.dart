import 'package:flutter/material.dart';

class EmailFormField extends StatefulWidget {
  final TextEditingController controller;
  const EmailFormField({super.key, required this.controller});

  @override
  State<EmailFormField> createState() => _EmailFormFieldState();
}

class _EmailFormFieldState extends State<EmailFormField> {
  late TextEditingController _emailController;
  bool password = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController = widget.controller;
  }

  void _onCheckEmail() {
    String _text = _emailController.text;
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

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        _onCheckEmail();
      },
      controller: _emailController,
      decoration: const InputDecoration(
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
          "Email",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
