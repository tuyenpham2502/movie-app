import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/home/cubit/home_cubit.dart';
import 'package:movie_app/components/views/home/home_screen.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return BlocProvider(
        create: (context) => HomeCubit(),
        child: const HomeScreen()
      );
    });
