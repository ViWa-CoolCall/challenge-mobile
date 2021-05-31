import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(this.redirect);

  final Widget redirect;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 120, vertical: 17),
                textStyle: TextStyle(fontSize: 25),
                // Usar AppGradients.linear
                primary: Color.fromRGBO(255, 87, 87, 1)),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => this.redirect));
            },
            child: const Text('Continuar'),
          ),
        ],
      ),
    );
  }
}
