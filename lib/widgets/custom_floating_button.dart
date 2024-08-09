import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final Function() function;
  final IconData icon;
  const CustomFloatingButton(
      {super.key, required this.function, required this.icon});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: function,
      backgroundColor: Colors.blueGrey,
      child: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}
