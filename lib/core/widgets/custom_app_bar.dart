import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onToggleTheme;
  final PreferredSizeWidget? bottom;
  final bool isshowdarktogel;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onToggleTheme,
    this.bottom,
    this.isshowdarktogel = true,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkTheme = Theme.brightnessOf(context) == Brightness.dark;
    return AppBar(
      title: Text(title),
      bottom: bottom,
      actions: [
        if (isshowdarktogel)
          Switch(
            value: isDarkTheme,
            activeThumbColor: const Color.fromARGB(255, 161, 117, 167),
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
