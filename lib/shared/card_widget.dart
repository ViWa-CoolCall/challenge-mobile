import 'package:CoolCall/core/core.dart';
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
            color: Color.fromRGBO(205, 205, 205, 0.1),
            borderRadius: BorderRadius.circular(10),
            border: Border.fromBorderSide(BorderSide(color: AppColors.border))),
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Icon(
              Icons.attach_money_outlined,
              size: 50,
            ),
            Center(
              child: Text(
                this.text,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
