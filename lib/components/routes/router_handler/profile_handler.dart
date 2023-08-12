import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/profile/cubit/profile_cubit.dart';
import 'package:movie_app/components/views/profile/profile_screen.dart';

Handler profileHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return BlocProvider(
          create: (context) => ProfileCubit(), child: const ProfileScreen());
    });
