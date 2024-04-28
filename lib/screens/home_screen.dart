import 'package:bmi_calculator_final/screens/result_screen.dart';
import 'package:bmi_calculator_final/widgets/age_button.dart';
import 'package:bmi_calculator_final/widgets/gender_select.dart';
import 'package:bmi_calculator_final/widgets/height_picker.dart';
import 'package:bmi_calculator_final/widgets/weight_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

enum Gender { male, female }

class _HomeScreenState extends State<HomeScreen> {
   Gender gender = Gender.male;
    int _height = 164;
    int _age = 22;
    int _weight = 52;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:   Text(
          "BMI Calculator",
        style: GoogleFonts.raleway(
          textStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontWeight: FontWeight.bold
          )
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
             Text(
              "Gender",
              style: GoogleFonts.raleway(
                  textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
              ),
            ),
            const SizedBox(height: 16,),
            GenderSelect(
              gender: gender,
              onMaleSelect: () {
                setState(() {
                  gender = Gender.male;
                });
              },
              onFemaleSelect: () {
                setState(() {
                  gender = Gender.female;
                });
              },
            ),
            const SizedBox(
              height: 12,
            ),

            const SizedBox(
              height: 30,
            ),
             Text(
              "Height (cm)",
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
            HeightPicker(
              height: _height,
              onTap: (int val){
                setState(() {
                  _height = val;
                });
              },
            ),
            const SizedBox(
              height: 24,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              AgeButton(
                age: _age,
                onDecrement: () {
                  setState(() {
                    _age--;
                  });
                },
                onIncrement: () {
                  setState(() {
                    _age++;
                  });
                },
              ),
              WeightPicker(
                weight: _weight,
                onTap: (int val){
                  setState(() {
                    _weight = val;
                  });
                },
              ),
            ],),
            const SizedBox(height: 40,),
            InkWell(
              child: Container(
                height: 60,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue,
                ),
                child:  Center(
                  child: Text("Calculate BMI",
                    style: GoogleFonts.raleway(
                        textStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 24,
                          color: Colors.white,
                            fontWeight: FontWeight.bold

                        )
                    ),
                  ),
                ),
              ),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx)=>
                        ResultScreen(
                          gender: gender,
                          height: _height,
                          age: _age,
                          weight: _weight,
                        )
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
