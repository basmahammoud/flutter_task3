import 'package:flutter/material.dart';
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
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SettingButtoms(
          isDark: isDark,
          onToggleTheme: onToggleTheme,
        ),
      ),
    );
  }
}
