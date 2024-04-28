import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class HeightPicker extends StatelessWidget {
  HeightPicker({super.key, required this.height, required this.onTap});

  int height;
  final void Function(int val) onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 2),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            NumberPicker(
                itemWidth: 43,
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
                minValue: 110,
                maxValue: 220,
                axis: Axis.horizontal,
                itemCount: 7,
                value: height,
                onChanged: onTap),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                Container(
                  height: 50,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.blue),
                ),
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
                Container(
                  height: 40,
                  width: 2,
                  decoration: const BoxDecoration(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
