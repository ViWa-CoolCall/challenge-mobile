import 'package:CoolCall/core/app_gradients.dart';
import 'package:CoolCall/pages/download/widgets/file_card_widget.dart';
import 'package:CoolCall/pages/subtema/subtema_page.dart';
import 'package:CoolCall/shared/button_widget.dart';
import 'package:flutter/material.dart';

class DownloadPage extends StatefulWidget {
  @override
  _DownloadPageState createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppGradients.linear),
        child: Padding(
            padding: const EdgeInsets.only(top: 125),
            child: Column(
              children: [
                Text(
                  "Faça download dos dados nos diferentes formatos de arquivos abaixo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 4,
                  children: [
                    FileCardWidget("PDF"),
                    FileCardWidget("CSV"),
                    FileCardWidget("XLS"),
                    FileCardWidget("ODT"),
                    FileCardWidget("ODT"),
                    FileCardWidget("XLS"),
                    FileCardWidget("CSV"),
                    FileCardWidget("PDF"),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 225),
                  child: ButtonWidget(SubtemaPage(), "Voltar"),
                )
              ],
            )),
      ),
    );
  }
}
