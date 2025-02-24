import 'package:flutter/material.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;

  const CircularIconButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Material(
        elevation: 1,
        shape: const CircleBorder(),
        color: Colors.white,
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: Colors.black, size: 22, weight: 900),
        ),
      ),
    );
  }
}
