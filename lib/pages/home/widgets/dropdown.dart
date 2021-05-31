import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget({Key? key}) : super(key: key);

  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  String dropdownwidgetValue = 'São Paulo';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownwidgetValue,
      icon: const Icon(Icons.arrow_drop_down),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.black, fontSize: 20),
      underline: Container(
        color: Colors.transparent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownwidgetValue = newValue!;
        });
      },
      items: <String>['São Paulo', 'Guarulhos', 'Santos', 'Osasco']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
