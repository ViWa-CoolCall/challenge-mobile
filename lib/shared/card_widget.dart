import 'package:CoolCall/core/core.dart';
import 'package:CoolCall/pages/download/download_page.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget(this.redirect, this.text);

  final Widget redirect;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => this.redirect));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.85),
            borderRadius: BorderRadius.circular(15),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(fontSize: 17.5),
          ),
        ),
      ),
    );
  }
}
