import 'package:calculator/components/button.dart';
import 'package:calculator/components/button_row.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatelessWidget {
  const KeyBoard({super.key, required this.callback});

  final void Function(String) callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow(
            buttons: [
              Button(text: 'AC', big: true, color: Button.dark, callback: callback),
              Button(text: '%', color: Button.dark, callback: callback),
              Button.operation(text: '/', callback: callback),
            ],
          ),
          const SizedBox(height: 2, ),
          ButtonRow(
            buttons: [
              Button(text: '7', callback: callback),
              Button(text: '8', callback: callback),
              Button(text: '9', callback: callback),
              Button.operation(text: 'x', callback: callback),
            ],
          ),
          const SizedBox(height: 2, ),
          ButtonRow(
            buttons: [
              Button(text: '4', callback: callback),
              Button(text: '5', callback: callback),
              Button(text: '6', callback: callback),
              Button.operation(text: '-', callback: callback),
            ],
          ),
          const SizedBox(height: 2, ),
          ButtonRow(
            buttons: [
              Button(text: '1', callback: callback),
              Button(text: '2', callback: callback),
              Button(text: '3', callback: callback),
              Button.operation(text: '+', callback: callback),
            ],
          ),
          const SizedBox(height: 2, ),
          ButtonRow(
            buttons: [
              Button(text: '0', big: true, callback: callback),
              Button.operation(text: '.', callback: callback),
              Button.operation(text: '=', callback: callback),
            ],
          ),
        ],
      ),
    );
  }
}
