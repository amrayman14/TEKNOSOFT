import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AgeButton extends StatelessWidget {
   AgeButton({super.key,required this.age, required this.onDecrement, required this.onIncrement});
  int age;
   final void Function() onDecrement;
   final void Function() onIncrement;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text("Age",
          style: GoogleFonts.raleway(
              textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 18,
                  fontWeight: FontWeight.bold

              )
          ),
        ),
        const SizedBox(height: 24,),
        Container(
          width: 160,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black12,width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: onDecrement,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(4)
                  ),
                  child: const Icon(Icons.remove),
                ),
              ),
              const SizedBox(
                width: 18.0,
              ),
              Text(age.toString(),
                style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                width: 18.0,
              ),
              InkWell(
                onTap: onIncrement,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: const Icon(Icons.add),
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
