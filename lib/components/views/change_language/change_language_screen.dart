import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/routes/app_routes.dart';
import 'package:movie_app/constants/constants.dart';
import 'package:movie_app/theme/app_styles.dart';

class ChangeLanguageScreen extends StatefulWidget {
  const ChangeLanguageScreen({super.key});

  @override
  State<ChangeLanguageScreen> createState() => _ChangeLanguageScreenState();
}

class _ChangeLanguageScreenState extends State<ChangeLanguageScreen> {
  void changeLanguage(Locale locale) {
    setState(() {
      context.setLocale(locale);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: Constants.languages
              .map((e) => TextButton(
                    onPressed: () {
                      changeLanguage(e['local']);
                      Navigator.pushNamedAndRemoveUntil(
                          context, Routes.home, (route) => false);
                    },
                    child: Text(
                      e['label'],
                      style: AppStyle.textSize14Font400White70,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
