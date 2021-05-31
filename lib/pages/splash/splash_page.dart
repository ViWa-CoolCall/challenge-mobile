import 'package:CoolCall/core/app_gradients.dart';
import 'package:CoolCall/core/app_images.dart';
import 'package:CoolCall/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((_) => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomePage())));

    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 200),
              child: Center(
                child: Image.asset(
                  AppImages.viwa,
                  width: 200,
                ),
              ),
            )));
  }
}
