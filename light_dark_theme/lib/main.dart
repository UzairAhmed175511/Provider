import 'package:flutter/material.dart';
import 'package:light_dark_theme/provider/theme_changer.dart';
import 'package:light_dark_theme/screen/dark_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ThemeChanger())],
      child: Builder(
        builder: (context) {
          final themechanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            themeMode: themechanger.themeMode,
            theme: ThemeData(
              brightness: Brightness.light,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              appBarTheme: AppBarTheme(backgroundColor: Colors.deepPurple),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.red,
                brightness: Brightness.dark,
              ),
              appBarTheme: AppBarTheme(backgroundColor: Colors.red),
            ),
            home: const DarkThemeScreen(),
          );
        },
      ),
    );
  }
}
