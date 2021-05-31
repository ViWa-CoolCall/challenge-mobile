import 'package:CoolCall/core/core.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  CardWidget(this.text);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
