import 'package:CoolCall/core/app_gradients.dart';
import 'package:CoolCall/pages/download/download_page.dart';
import 'package:CoolCall/pages/tema/tema_page.dart';
import 'package:CoolCall/shared/button_widget.dart';
import 'package:CoolCall/shared/card_widget.dart';
import 'package:flutter/material.dart';

class SubtemaPage extends StatefulWidget {
  @override
  _SubtemaPageState createState() => _SubtemaPageState();
}

class _SubtemaPageState extends State<SubtemaPage> {
  final String text = "Subtema";
  final Widget redirect = DownloadPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(gradient: AppGradients.linear),
          child: Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Column(
              children: [
                Center(
                    child: Text(
                  "Subtemas",
                  style: TextStyle(
                      fontSize: 27.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  crossAxisCount: 2,
                  children: [
                    CardWidget(this.redirect, text),
                    CardWidget(this.redirect, text),
                    CardWidget(this.redirect, text),
                    CardWidget(this.redirect, text),
                    CardWidget(this.redirect, text),
                    CardWidget(this.redirect, text)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ButtonWidget(TemaPage(), "Voltar", 132.5),
                )
              ],
            ),
          )),
    );
  }
}
