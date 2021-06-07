import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      title,
      style: TextStyle(
          fontSize: 27.5, color: Colors.white, fontWeight: FontWeight.w600),
    ));
  }
}
