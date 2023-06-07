import 'package:artopsy/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundWave extends StatelessWidget {
  final double height;
  const BackgroundWave({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ClipPath(
        clipper: BackGroundWaveClipper(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 170, 167, 167),
              Color.fromARGB(255, 202, 191, 197)
            ]),
          ),
          child: Padding(
            padding: const EdgeInsets.all(31.0),
            child: Text(
              'Artopsy',
              style: GoogleFonts.dancingScript(
                textStyle: const TextStyle(
                  letterSpacing: .5,
                  fontSize: 46,
                  color: kBlackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BackGroundWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    const minSize = 140.0;
    // final p0 = size.height * 0.50;
    final p1Diff = ((minSize - size.height) * 0.5).truncate().abs();
    path.lineTo(0.0, size.height - p1Diff);
    final controlPoint = Offset(size.width * 0.5, size.height);
    final endPoint = Offset(size.width, minSize);
    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) =>
      oldClipper != this;
}
