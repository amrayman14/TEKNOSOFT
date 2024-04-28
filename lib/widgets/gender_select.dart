import 'package:flutter/material.dart';
import 'package:bmi_calculator_final/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderSelect extends StatelessWidget {
  GenderSelect({super.key,required this.gender, required this.onMaleSelect, required this.onFemaleSelect});
  Gender gender;
  final void Function() onMaleSelect;
  final void Function() onFemaleSelect;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onMaleSelect,
          child: Card(
            color: gender == Gender.male
                ? Colors.blue[50]
                : Colors.white70,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: gender == Gender.male
                          ? Colors.blue
                          : Colors.white70,
                      width: 2)),
              height: 160,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.man,
                    size: 105,
                    color:
                    gender == Gender.male ? Colors.blue : Colors.grey,
                  ),
                  const SizedBox(height: 8,),
                   Text(
                    "Male",
                    style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 18,


                  )
            ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: onFemaleSelect,
          child: Card(
            color: gender == Gender.female
                ? Colors.blue[50]
                : Colors.white70,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: gender == Gender.female
                          ? Colors.blue
                          : Colors.white70,
                      width: 2)),
              height: 160,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.woman,
                    size: 105,
                    color:
                    gender == Gender.female ? Colors.blue : Colors.grey,
                  ),
                  const SizedBox(height: 8,),
                   Text(
                    "Female",
                    style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 18,
                        )
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
