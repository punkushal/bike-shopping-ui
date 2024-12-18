import 'package:cycle_showcasing_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class SlantedCard extends StatelessWidget {
  const SlantedCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(34.0),
      child: ClipPath(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        clipper: CustomCardClipper(),
        child: Container(
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.4,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: primaryGradientColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Slanted Card',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomCardClipper extends CustomClipper<Path> {
  final double cornerRadius = 20.0; // Radius for rounded corners
  final double slantHeight = 40.0; // How much the right side is slanted

  @override
  Path getClip(Size size) {
    final path = Path();

    // Top-left corner (rounded)
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0);

    // Top-right corner (rounded and slanted)
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius);

    // Bottom-right corner (shorter, with rounding)
    path.lineTo(size.width, size.height - slantHeight - cornerRadius);
    path.quadraticBezierTo(size.width, size.height - slantHeight,
        size.width - cornerRadius, size.height - slantHeight);

    // Bottom-left corner (longer, with rounding)
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius);

    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
