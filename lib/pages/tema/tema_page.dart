import 'package:CoolCall/core/app_gradients.dart';
import 'package:CoolCall/pages/home/home_page.dart';
import 'package:CoolCall/pages/subtema/subtema_page.dart';
import 'package:CoolCall/shared/button_widget.dart';
import 'package:CoolCall/shared/card_widget.dart';
import 'package:CoolCall/shared/title_widget.dart';
import 'package:flutter/material.dart';

class TemaPage extends StatefulWidget {
  @override
  _TemaPageState createState() => _TemaPageState();
}

class _TemaPageState extends State<TemaPage> {
  final Widget redirect = SubtemaPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Column(
              children: [
                TitleWidget("Temas"),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: [
                    CardWidget(redirect, "Receitas"),
                    CardWidget(redirect, "Despesas"),
                    CardWidget(redirect, "Covid-19"),
                    CardWidget(redirect, "Concessões"),
                    CardWidget(redirect, "Servidores"),
                    CardWidget(redirect, "Balanços")
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonWidget(HomePage(), "Voltar", 132.5),
                )
              ],
            ),
          )),
    );
  }
}
