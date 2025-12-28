import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/tab_bar.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{

  final String title;
  final bool isDark;
  final VoidCallback onToggleTheme;
    final PreferredSizeWidget? bottom;
    
  const CustomAppBar({
    super.key,
    required this.title, 
    required this.isDark, 
    required this.onToggleTheme, 
    this.bottom,});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      bottom: bottom,
      actions: [
        Switch(
          value: isDark,
          activeColor: const Color.fromARGB(255, 161, 117, 167),
          onChanged: (_) => onToggleTheme(),
        ),
      ],
    );
  }
  
  @override
  Size get preferredSize {
    double height = kToolbarHeight;
    if (bottom != null) {
      height += bottom!.preferredSize.height; // اضافة ارتفاع للتاب بار
    }
    return Size.fromHeight(height);
  }
}