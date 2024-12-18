import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  const BgContainer({super.key, required this.content});
  final Widget content;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          'app-bg.png',
          fit: BoxFit.cover,
          width: screenSize.width,
        ),
        content,
      ],
    );
  }
}
