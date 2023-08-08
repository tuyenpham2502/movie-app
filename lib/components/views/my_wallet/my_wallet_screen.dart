import 'package:flutter/material.dart';
import 'package:movie_app/theme/app_styles.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("My Wallet", style: AppStyle.textSize16Font300,),
      ),
    );
  }
}
