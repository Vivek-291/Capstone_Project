import 'package:flutter/material.dart';

class ConnectButton extends StatelessWidget {
  final Function()? function;
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final Color textColor;
  const ConnectButton({
    Key? key,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
    required this.textColor,
    this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 2),
      child: TextButton(
        onPressed: function,
        child: Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(5),
          ),

          child:Align(
            alignment: Alignment.center,

            child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          width: 180,
          height: 30,

        )
      ),
    );
  }
}
