import 'package:flutter/material.dart';
import 'package:movie_app/theme/app_styles.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Help Center", style: AppStyle.textSize16Font300,),
      ),
    );
  }
}
