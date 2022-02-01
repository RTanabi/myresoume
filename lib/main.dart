import 'package:flutter/material.dart';
import 'package:myresume/ControllerFolder/constraints.dart';
import 'package:myresume/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UsResume',
      debugShowCheckedModeBanner: false,
      theme: liteThemeData,
      darkTheme: darkThemeData,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const MainClass(),
      },
    );
  }
}
