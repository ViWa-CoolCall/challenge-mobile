import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Container vai pegar a cor inteira da página
    // Imagem será centralizada
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
