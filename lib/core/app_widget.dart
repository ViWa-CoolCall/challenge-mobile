import 'package:CoolCall/pages/download/download_page.dart';
import 'package:CoolCall/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Cool Call", home: SplashPage());
  }
}
