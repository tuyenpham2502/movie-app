import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/login/cubit/login_cubit.dart';
import 'package:movie_app/components/views/login/login_screen.dart';

Handler loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
      create: (context) => LoginCubit(), child: const LoginScreen());
});
