import 'package:flutter/material.dart';

class HomeTabBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;

  const HomeTabBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      tabs: const [
        Tab(text: "Overview"),
        Tab(text: "Transactions"),
        Tab(text: "Budget"),
      ],
    );
    
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
