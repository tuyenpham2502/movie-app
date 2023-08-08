import 'package:flutter/material.dart';
import 'package:movie_app/theme/app_styles.dart';

class ChangeLanguageScreen extends StatelessWidget {
  const ChangeLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Change Language", style: AppStyle.textSize16Font300,),
      ),
    );
  }
}
