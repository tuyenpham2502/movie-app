import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/information/cubit/information_cubit.dart';
import 'package:movie_app/components/views/information/information_screen.dart';

Handler informationHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
      create: (context) => InformationCubit(), child: const InformationScreen());
});
