import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/change_language/change_language_screen.dart';
import 'package:movie_app/components/views/login/login_screen.dart';

import '../../views/change_language/cubit/change_language_cubit.dart';

Handler changeLanguageHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return BlocProvider(
          create: (context) => ChangeLanguageCubit(), child: const ChangeLanguageScreen());
    });
