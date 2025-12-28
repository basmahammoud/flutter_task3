import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/custom_app_bar.dart';
import 'package:flutter_task3/core/widgets/drawer_navigation_item.dart';
import 'package:flutter_task3/core/widgets/tab_bar.dart';
import 'package:flutter_task3/features/home/budget.dart';
import 'package:flutter_task3/features/home/overview.dart';
import 'package:flutter_task3/features/home/transactions.dart';

class Home extends StatefulWidget {
  final VoidCallback onToggleTheme; // تابع تغيير الثيم
  final bool isDark;

  const Home({super.key, 
  required this.onToggleTheme, 
  required this.isDark});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  
  //bool isDark = false;
   late TabController _tabController;

   @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
        title: "Finance Dashboard",
        isDark: widget.isDark,
        onToggleTheme: widget.onToggleTheme,
        bottom:  PreferredSize(
          preferredSize: const Size.fromHeight(50), 
          child: HomeTabBar(controller: _tabController),
           ),
      ),
        drawer: const HomeDrawer(),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: TabBarView(
      controller: _tabController, 
        children: [
         Overview_Tab(),
          Transactions(),
          Budget(),
          ],
       ),
    );
  }
}
