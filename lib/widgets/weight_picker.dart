import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class WeightPicker extends StatelessWidget {
   WeightPicker({super.key, required this.weight, required this.onTap});
   int weight;
  final void Function(int val) onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
          "Weight (kg)",
          style: GoogleFonts.raleway(
              textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.bold
              )
          ),
        ),
        const SizedBox(
          height: 24,
        ),
        Container(
          width: 160,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black12, width: 2),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 20,
                height: 20,
                child: CustomPaint(
                  size: const Size(20, 20), // Adjust triangle size as needed
                  painter: TrianglePainter(),
                ),
              ),
              SizedBox(
                width: 130,
                height: 50,
                child: NumberPicker(
                    itemWidth: 45,
                    itemHeight: 30,
                    selectedTextStyle: GoogleFonts.raleway(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(fontWeight: FontWeight.bold, fontSize: 24)),
                    textStyle: GoogleFonts.raleway(
                        textStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold,
                            color: Colors.grey
                        )),
                    minValue: 40,
                    maxValue: 220,
                    axis: Axis.horizontal,
                    itemCount: 3,
                    value: weight,
                    onChanged: onTap
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final Path path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width / 2, size.height)
      ..close();

    canvas.drawPath(path, paint); // Draw the triangle
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
