import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/materials/app_colors.dart';
import 'package:movie_app/components/views/bottom_bar/bottom_bar_widget.dart';
import 'package:movie_app/components/views/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:movie_app/components/views/home/home_screen.dart';
import 'package:movie_app/components/views/my_ticket/my_ticket_screen.dart';
import 'package:movie_app/components/views/my_wallet/my_wallet_screen.dart';

final GlobalKey<NavigatorState> homeNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> myWallet = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> myTicket = GlobalKey<NavigatorState>();

class BottomBarHome extends StatefulWidget {
  const BottomBarHome({super.key});

  @override
  State<BottomBarHome> createState() => _BottomBarHomeState();
}

class _BottomBarHomeState extends State<BottomBarHome> {
  final PageController pageController = PageController();
  late BottomBarCubit _bottomBarCubit;

  @override
  void initState() {
    _bottomBarCubit = context.read<BottomBarCubit>();
    super.initState();

    pageController.addListener(() {
      if (pageController.page == 0) {
        _bottomBarCubit.changePage(0);
      } else if (pageController.page == 1) {
        _bottomBarCubit.changePage(1);
      } else if (pageController.page == 2) {
        _bottomBarCubit.changePage(2);
      } else if (pageController.page == 3) {
        _bottomBarCubit.changePage(3);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: WillPopScope(
          onWillPop: () async {
            bool result = await configureWillPopScope();
            return result;
          },
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                      child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: const [
                      HomeScreen(),
                      MyWalletScreen(),
                      MyTicketScreen(),
                    ],
                  )),
                  Container(
                    height: kBottomNavigationBarHeight +
                        (MediaQuery.of(context).viewPadding.bottom > 0
                            ? (MediaQuery.of(context).viewPadding.bottom - 15)
                            : 0),
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewPadding.bottom > 0
                            ? (MediaQuery.of(context).viewPadding.bottom - 30)
                            : 0),
                    child: BottomBarWidget(bottomBarController: pageController),
                  )
                ],
              )
            ],
          ),
        ))
      ],
    );
  }

  Future<bool> configureWillPopScope() async {
    switch (pageController.page!.toInt()) {
      case 0:
        if (homeNavigatorKey.currentState != null) {
          final bool result = await homeNavigatorKey.currentState!.maybePop();
          if (result) {
            return false;
          } else {
            return true;
          }
        }
        break;
      case 1:
        if (myWallet.currentState != null) {
          final bool result = await myWallet.currentState!.maybePop();
          if (result) {
            return false;
          } else {
            return true;
          }
        }
        break;
      case 2:
        if (myTicket.currentState != null) {
          final bool result = await myTicket.currentState!.maybePop();
          if (result) {
            return false;
          } else {
            return true;
          }
        }
        break;
    }
    return true;
  }
}
