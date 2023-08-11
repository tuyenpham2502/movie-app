import 'package:flutter/material.dart';
import 'package:movie_app/components/materials/app_colors.dart';

class NavigationIconWidget extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onTap;
  final bool isSelected;
  const NavigationIconWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: isSelected ? AppColors.skyBlue : Colors.transparent,
                    width: 2,
                ))),
        child: InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  icon,
                  height: 20,
                  width: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: isSelected ? AppColors.white : Colors.white70,
                    fontSize: 12,
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
