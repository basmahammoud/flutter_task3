import 'package:flutter/material.dart';
import 'package:flutter_task3/core/widgets/custom_app_bar.dart';
import '../../core/widgets/setting_buttoms.dart';

class Settings extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;

  const Settings({
    super.key,
    required this.isDark,
    required this.onToggleTheme, 
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "settings",
        onToggleTheme: onToggleTheme,
        isshowdarktogel: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SettingButtons(
          isDark: isDark,
          onToggleTheme: onToggleTheme,
        ),
      ),
    );
  }
}
