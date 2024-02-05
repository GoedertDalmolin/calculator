import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operationColor = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;

  final void Function(String) callback;

  const Button({
    super.key,
    required this.text,
    this.color = Button.defaultColor,
    this.big = false,
    required this.callback,
  });

  const Button.big({
    super.key,
    required this.text,
    this.color = Button.defaultColor,
    this.big = true,
    required this.callback,
  });

  const Button.operation({
    super.key,
    required this.text,
    this.color = Button.operationColor,
    this.big = false,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        ),
        onPressed: () {
          callback(text);
        },
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
