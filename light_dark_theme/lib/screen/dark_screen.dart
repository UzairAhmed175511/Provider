import 'package:flutter/material.dart';
import 'package:light_dark_theme/provider/theme_changer.dart';
import 'package:provider/provider.dart';

class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Theme")),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Theme"),
            value: ThemeMode.light,
            groupValue: themechanger.themeMode,
            onChanged: (value) {
              if (value != null) {
                themechanger.setTheme(value);
              }
            },
          ),
          RadioListTile(
            title: Text("Dark Theme"),
            value: ThemeMode.dark,
            groupValue: themechanger.themeMode,
            onChanged: (value) {
              if (value != null) {
                themechanger.setTheme(value);
              }
            },
          ),
          RadioListTile(
            title: Text("System Theme"),
            value: ThemeMode.system,
            groupValue: themechanger.themeMode,
            onChanged: (value) {
              if (value != null) {
                themechanger.setTheme(value);
              }
            },
          ),
        ],
      ),
    );
  }
}
