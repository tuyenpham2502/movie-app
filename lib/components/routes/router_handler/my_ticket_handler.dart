import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/my_ticket/cubit/my_ticket_cubit.dart';
import 'package:movie_app/components/views/my_ticket/my_ticket_screen.dart';

Handler myTicketHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return BlocProvider(
    create: (context) => MyTicketCubit(),
    child: const MyTicketScreen(),
  );
});
