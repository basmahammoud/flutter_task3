import 'package:flutter/material.dart';

class SettingButtons extends StatelessWidget {
  final bool isDark;
  final VoidCallback onToggleTheme;
  

  const SettingButtons({
    super.key,
    required this.isDark,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(Icons.dark_mode),
          title: const Text("Dark Mode"),
          trailing: Switch(
            value: isDark,
            onChanged: (_) => onToggleTheme(),
          ),
        ),

        const Divider(),

        ListTile(
          leading: const Icon(Icons.language),
          title: const Text("Language"),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {
          },
        ),
      ],
    );
  }
}
