import 'package:aprendendo_flutter/app_controller.dart';
import 'package:aprendendo_flutter/home_page.dart';
import 'package:aprendendo_flutter/login_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (constext) => LoginPage(),
            '/home': (context) => HomePage(),
          },
          //  home: LoginPage(),
        );
      },
    );
  }
}
