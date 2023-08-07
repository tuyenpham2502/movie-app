import 'package:flutter/material.dart';
import 'package:movie_app/theme/app_styles.dart';
class SelectCinemaScreen extends StatelessWidget {
  const SelectCinemaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Select Cinema",
          style:AppStyle.textSize18Font600,
        ),
      ),
    );
  }
}
