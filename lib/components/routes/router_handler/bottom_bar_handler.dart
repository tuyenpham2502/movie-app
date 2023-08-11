import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/bottom_bar/cubit/bottom_bar_cubit.dart';

import '../../views/home/widgets/bottom_bar_home.dart';

Handler bottomBarHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return BlocProvider(
        create: (context) => BottomBarCubit(),
        child: const BottomBarHome(),
      );
    });
