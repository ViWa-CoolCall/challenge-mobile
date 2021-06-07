import 'package:CoolCall/core/app_gradients.dart';
import 'package:CoolCall/core/app_images.dart';
import 'package:CoolCall/pages/tema/tema_page.dart';
import 'package:CoolCall/shared/button_widget.dart';
import 'package:CoolCall/pages/home/widgets/dropdown.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(gradient: AppGradients.linear),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  Image.asset(
                    AppImages.tcesp,
                    width: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: DropDownWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 290),
                    child: ButtonWidget(TemaPage(), "Continuar", 120),
                  )
                ],
              ),
            )));
  }
}
