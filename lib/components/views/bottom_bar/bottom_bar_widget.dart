import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/components/views/bottom_bar/cubit/bottom_bar_cubit.dart';
import 'package:movie_app/components/views/widgets/navigation_icon.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({
    Key? key,
    required this.bottomBarController,
  }) : super(key: key);

  final PageController bottomBarController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (context, state) {
        return Row(
          children: [
            NavigationIconWidget(
              title: 'Movies',
              icon: state.currentPage == 0
                  ? 'assets/icons/home_active.png'
                  : 'assets/icons/home_inactive.png',
              isSelected: state.currentPage == 0,
              onTap: () {
                if (state.currentPage == 0) return;
                bottomBarController.jumpToPage(0);
              },
            ),
            NavigationIconWidget(
                icon: state.currentPage == 1
                    ? 'assets/icons/pocket_active.png'
                    : 'assets/icons/pocket_unactive.png',
                title: "Wallet",
                onTap: () {
                  if (state.currentPage == 1) return;
                  bottomBarController.jumpToPage(1);
                },
                isSelected: state.currentPage == 1),
            NavigationIconWidget(
                icon: state.currentPage == 2
                    ? 'assets/icons/ticket_active.png'
                    : 'assets/icons/ticket_unactive.png',
                title: "My Ticket",
                onTap: () {
                  if (state.currentPage == 2) return;
                  bottomBarController.jumpToPage(2);
                },
                isSelected: state.currentPage == 2),
          ],
        );
      },
    );
  }
}
