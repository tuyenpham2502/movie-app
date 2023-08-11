import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/my_wallet/cubit/my_wallet_cubit.dart';
import 'package:movie_app/components/views/my_wallet/my_wallet_screen.dart';

Handler myWalletHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      return BlocProvider(
        create: (context) => MyWalletCubit(),
        child: const MyWalletScreen(),
      );
    });